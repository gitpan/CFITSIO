#include "EXTERN.h"
#include "perl.h"
#include "XSUB.h"

#include <stdlib.h>
#include <stdio.h>
#include "fitsio.h"
#include "util.h"

static int perly_unpacking = 1;

long column_width(fitsfile * fptr, int colnum) {
	int hdutype, status=0, typecode, tfields;
	long repeat,width,size;
	long start_col,end_col; /* starting and ending positions for ASCII tables */
	long rowlen, nrows, *tbcol;
	char typechar[FLEN_VALUE];

	fits_get_hdu_type(fptr,&hdutype,&status);
	check_status(status);
	switch (hdutype) {
		case ASCII_TBL:

			/* Get starting column of field */
			fits_get_acolparms(
				fptr,colnum,NULL,&start_col,NULL,NULL,NULL,NULL,NULL,NULL,
				&status
			);
			check_status(status);

			/* Get length of each row and number of fields */
			fits_read_atblhdr(
				fptr,0,&rowlen,&nrows,&tfields,NULL,NULL,NULL,NULL,NULL,&status
			);
			check_status(status);

			if (colnum == tfields) {
				end_col = rowlen + 1;
			}
			else {
				tbcol = get_mortalspace(tfields,TLONG);
				fits_read_atblhdr(
					fptr,tfields,&rowlen,&nrows,&tfields,NULL,
					tbcol,NULL,NULL,NULL,&status
				);
				check_status(status);
				end_col = tbcol[colnum] + 1;
			}
			size = end_col - start_col;
			break;

		/* Get the typechar parameter, which should be of form 'An', where
		 * n is an the width of the field
		 */
		case BINARY_TBL:
			fits_get_bcolparms(
				fptr,colnum,NULL,NULL,typechar,&repeat,NULL,NULL,
				NULL,NULL,&status
			);
			check_status(status);
			if (typechar[0] != 'A') { /* perhaps variable size? */
				fits_read_key_lng(fptr,"NAXIS2",&rowlen,NULL,&status);
				check_status(status);
				size  = rowlen+1;
			}
			else
				size = repeat;
			break;
		default:
			croak("column_width() - unrecognized HDU type (%d)",hdutype);
	}
	return size;
}

void check_status(int status) {
	if (status != 0) {
		fits_report_error(stderr,status);
		croak("CFITSIO library detected an error...I'm outta here");
	}
}

int is_scalar_ref (SV* arg) { /* Utility to determine if ref to scalar */
	SV* foo;
	if (!SvROK(arg))
		return 0;
	foo = SvRV(arg);
	if (SvPOK(foo)) 
		return 1;
	else 
		return 0;
}

/*
 * Swap values in a long array inplace.
 */
void swapDims(int ndims, long * dims) {
	int i;
	long tmp;

	for (i=0; i<ndims/2; i++) {
		tmp = dims[i];
		dims[i] = dims[ndims-1-i];
		dims[ndims-i-1] = tmp;
	}
}

int PerlyUnpacking( int value ) {
	if (value >=0)
		perly_unpacking=value;
	return perly_unpacking;
}

void* pack1D ( SV* arg, int datatype ) {
	int size;
	char * stringscalar;
	logical logscalar;
	byte bscalar;
	unsigned short usscalar;
	short sscalar;
	unsigned int uiscalar;
	int iscalar;
	unsigned long ulscalar;
	long lscalar;
	float fscalar;
	double dscalar;
	AV* array;
	I32 i,n;
	SV* work;
	SV** work2;
	double nval;
	STRLEN len;

	if (arg == &sv_undef)
		return (void *) NULL;

	if (is_scalar_ref(arg))                 /* Scalar ref */
		return (void*) SvPV(SvRV(arg), len);

	size = sizeof_datatype(datatype);

	work = sv_2mortal(newSVpv("", 0));

	/* Is arg a scalar? Return scalar*/

	if (!SvROK(arg) && SvTYPE(arg)!=SVt_PVGV) {
		switch (datatype) {
			case TCOMPLEX:
			case TDBLCOMPLEX:
				croak("How the hell are you gonna get a complex value into a scalar?");
			case TSTRING:
				return (void *) SvPV(arg,na);
			case TLOGICAL:
				logscalar = (logical) SvIV(arg);
				sv_setpvn(work, (char *) &logscalar, size);
				break;
			case TBYTE:
				bscalar = (byte) SvIV(arg);
				sv_setpvn(work, (char *) &bscalar, size);
				break;
			case TUSHORT:
				usscalar = (unsigned short) SvIV(arg);
				sv_setpvn(work, (char *) &usscalar, size);
				break;
			case TSHORT:
				sscalar = (short) SvNV(arg);
				sv_setpvn(work, (char *) &sscalar, size);
				break;
			case TUINT:
				uiscalar = (unsigned int) SvNV(arg);
				sv_setpvn(work, (char *) &uiscalar, size);
				break;
			case TINT:
				iscalar = (int) SvIV(arg);
				sv_setpvn(work, (char *) &iscalar, size);
				break;
			case TULONG:
				ulscalar = (unsigned long) SvNV(arg);
				sv_setpvn(work, (char *) &ulscalar, size);
				break;
			case TLONG:
				lscalar = (long) SvIV(arg);
				sv_setpvn(work, (char *) &lscalar, size);
				break;
			case TFLOAT:
				fscalar = (float) SvNV(arg);
				sv_setpvn(work, (char *) &fscalar, size);
				break;
			case TDOUBLE:
				dscalar = (double) SvNV(arg);
				sv_setpvn(work, (char *) &dscalar, size);
				break;
			default:
				croak("Hmmm...I seem to have left a case out of the pack1D scalar code");
		}
		return (void *) SvPV(work,na);
	}

	/* Is it a glob or reference to an array? */

	if (SvTYPE(arg)==SVt_PVGV || (SvROK(arg) && SvTYPE(SvRV(arg))==SVt_PVAV)) {

		if (SvTYPE(arg)==SVt_PVGV)
			array = (AV *) GvAVn((GV*) arg); /* glob */
		else
			array = (AV *) SvRV(arg);   /* reference */

		n = av_len(array);

		switch (datatype) {
			case TSTRING:
				SvGROW(work, sizeof(char *) * (n+1));
				for (i=0; i<=n; i++) {
					if ((work2=av_fetch(array,i,0)) == NULL)
						stringscalar = "";
					else {
						if (SvROK(*work2))
							goto errexit;
						stringscalar = SvPV(*work2,na);
					}
					sv_catpvn(work, (char *) &stringscalar, sizeof(char *));
				}
				break;
			case TLOGICAL:
				SvGROW(work, size * (n+1));
				for (i=0; i<=n; i++) {
					if ((work2=av_fetch(array,i,0)) == NULL)
						logscalar = 0;
					else {
						if (SvROK(*work2))
							goto errexit;
						logscalar = (logical) SvIV(*work2);
					}
					sv_catpvn(work, (char *) &logscalar, size);
				}
				break;
			case TBYTE:
				SvGROW(work, size * (n+1));
				for (i=0; i<=n; i++) {
					if ((work2=av_fetch(array,i,0)) == NULL)
						bscalar = 0;
					else {
						if (SvROK(*work2))
							goto errexit;
						bscalar = (byte) SvIV(*work2);
					}
					sv_catpvn(work, (char *) &bscalar, size);
				}
				break;
			case TUSHORT:
				SvGROW(work, size * (n+1));
				for (i=0; i<=n; i++) {
					if ((work2=av_fetch(array,i,0)) == NULL)
						usscalar = 0;
					else {
						if (SvROK(*work2))
							goto errexit;
						usscalar = (unsigned short) SvIV(*work2);
					}
					sv_catpvn(work, (char *) &usscalar, size);
				}
				break;
			case TSHORT:
				SvGROW(work, size * (n+1));
				for (i=0; i<=n; i++) {
					if ((work2=av_fetch(array,i,0)) == NULL)
						sscalar = 0;
					else {
						if (SvROK(*work2))
							goto errexit;
						sscalar = (short) SvIV(*work2);
					}
					sv_catpvn(work, (char *) &sscalar, size);
				}
				break;
			case TUINT:
				SvGROW(work, size * (n+1));
				for (i=0; i<=n; i++) {
					if ((work2=av_fetch(array,i,0)) == NULL)
						uiscalar = 0;
					else {
						if (SvROK(*work2))
							goto errexit;
						uiscalar = (unsigned int) SvNV(*work2);
					}
					sv_catpvn(work, (char *) &uiscalar, size);
				}
				break;
			case TINT:
				SvGROW(work, size * (n+1));
				for (i=0; i<=n; i++) {
					if ((work2=av_fetch(array,i,0)) == NULL)
						iscalar = 0;
					else {
						if (SvROK(*work2))
							goto errexit;
						iscalar = (int) SvIV(*work2);
					}
					sv_catpvn(work, (char *) &iscalar, size);
				}
				break;
			case TULONG:
				SvGROW(work, size * (n+1));
				for (i=0; i<=n; i++) {
					if ((work2=av_fetch(array,i,0)) == NULL)
						ulscalar = 0;
					else {
						if (SvROK(*work2))
							goto errexit;
						ulscalar = (unsigned long) SvNV(*work2);
					}
					sv_catpvn(work, (char *) &ulscalar, size);
				}
				break;
			case TLONG:
				SvGROW(work, size * (n+1));
				for (i=0; i<=n; i++) {
					if ((work2=av_fetch(array,i,0)) == NULL)
						lscalar = 0;
					else {
						if (SvROK(*work2))
							goto errexit;
						lscalar = (long) SvNV(*work2);
					}
					sv_catpvn(work, (char *) &lscalar, size);
				}
				break;
			case TCOMPLEX:
			case TFLOAT:
				SvGROW(work, sizeof(float) * (n+1));
				for (i=0; i<=n; i++) {
					if ((work2=av_fetch(array,i,0)) == NULL)
						fscalar = 0.0;
					else {
						if (SvROK(*work2))
							goto errexit;
						fscalar = (float) SvNV(*work2);
					}
					sv_catpvn(work, (char *) &fscalar, sizeof(float));
				}
				break;
			case TDBLCOMPLEX:
			case TDOUBLE:
				SvGROW(work, sizeof(double) * (n+1));
				for (i=0; i<=n; i++) {
					if ((work2=av_fetch(array,i,0)) == NULL)
						dscalar = 0.0;
					else {
						if (SvROK(*work2))
							goto errexit;
						dscalar = (double) SvNV(*work2);
					}
					sv_catpvn(work, (char *) &dscalar, sizeof(double));
				}
				break;
			default:
				croak("Hmmm...I seem to have left a case out of the pack1D glob/array code");
		}
		/* Return a pointer to the byte array */

		return (void *) SvPV(work, na);
	}

	errexit:
	croak("Routine can only handle scalar values or refs to 1D arrays of scalars");
}

void* packND ( SV* arg, int datatype ) {

	SV* work;
	STRLEN len;

	if (arg == &sv_undef)
		return (void *) NULL;

	if (is_scalar_ref(arg))                 /* Scalar ref */
		return (void*) SvPV(SvRV(arg), len);

	work = sv_2mortal(newSVpv("", 0));
	pack_element(work, &arg, datatype);
	return (void *) SvPV(work, na);

}

/* Internal function of packND - pack an element recursively */

void pack_element(SV* work, SV** arg, int datatype) { 

	char * stringscalar;
	logical logscalar;
	byte bscalar;
	unsigned short usscalar;
	short sscalar;
	unsigned int uiscalar;
	int iscalar;
	unsigned long ulscalar;
	long lscalar;
	float fscalar;
	double dscalar;

	I32 i,n;
	AV* array;
	double nval;

	/* Pack element arg onto work recursively */

	/* Is arg a scalar? Pack and return */

	if (arg==NULL || (!SvROK(*arg) && SvTYPE(*arg)!=SVt_PVGV)) {
		switch (datatype) {
			case TSTRING:
				if (arg == NULL)
					stringscalar = "";
				else
					stringscalar = SvPV(*arg,na);
				sv_catpvn(work, (char *) &stringscalar, sizeof(char *));
				break;
			case TLOGICAL:
				if (arg == NULL)
					logscalar = 0;
				else
					logscalar = (logical) SvIV(*arg);
				sv_catpvn(work, (char *) &logscalar, sizeof_datatype(datatype));
				break;
			case TBYTE:
				if (arg == NULL)
					bscalar = 0;
				else
					bscalar = (byte) SvIV(*arg);
				sv_catpvn(work, (char *) &bscalar, sizeof_datatype(datatype));
				break;
			case TUSHORT:
				if (arg == NULL)
					usscalar = 0;
				else
					usscalar = (unsigned short) SvNV(*arg);
				sv_catpvn(work, (char *) &usscalar, sizeof_datatype(datatype));
				break;
			case TSHORT:
				if (arg == NULL)
					sscalar = 0;
				else
					sscalar = (short) SvIV(*arg);
				sv_catpvn(work, (char *) &sscalar, sizeof_datatype(datatype));
				break;
			case TUINT:
				if (arg == NULL)
					uiscalar = 0;
				else
					uiscalar = (unsigned int) SvNV(*arg);
				sv_catpvn(work, (char *) &uiscalar, sizeof_datatype(datatype));
				break;
			case TINT:
				if (arg == NULL)
					iscalar = 0;
				else
					iscalar = (int) SvIV(*arg);
				sv_catpvn(work, (char *) &iscalar, sizeof_datatype(datatype));
				break;
			case TULONG:
				if (arg == NULL)
					ulscalar = 0;
				else
					ulscalar = (unsigned long) SvNV(*arg);
				sv_catpvn(work, (char *) &ulscalar, sizeof_datatype(datatype));
				break;
			case TLONG:
				if (arg == NULL)
					lscalar = 0;
				else
					lscalar = (long) SvNV(*arg);
				sv_catpvn(work, (char *) &lscalar, sizeof_datatype(datatype));
				break;
			case TFLOAT:
				if (arg == NULL)
					fscalar = 0.0;
				else
					fscalar = (float) SvNV(*arg);
				sv_catpvn(work, (char *) &fscalar, sizeof_datatype(datatype));
				break;
			case TCOMPLEX:
				if (arg == NULL)
					fscalar = 0.0;
				else
					fscalar = (float) SvNV(*arg);
				sv_catpvn(work, (char *) &fscalar, sizeof_datatype(datatype)/2);
				break;
			case TDOUBLE:
				if (arg == NULL)
					dscalar = 0.0;
				else
					dscalar = (double) SvNV(*arg);
				sv_catpvn(work, (char *) &dscalar, sizeof_datatype(datatype));
				break;
			case TDBLCOMPLEX:
				if (arg == NULL)
					dscalar = 0.0;
				else
					dscalar = (double) SvNV(*arg);
				sv_catpvn(work, (char *) &dscalar, sizeof_datatype(datatype)/2);
				break;
			default:
				croak("Hmmm...I seem to have left a case out of the pack_element scalar code");
		}
		return;
	}

	/* Is it a glob or reference to an array? */

	if (SvTYPE(*arg)==SVt_PVGV || (SvROK(*arg) && SvTYPE(SvRV(*arg))==SVt_PVAV)) {

		/* Dereference */

		if (SvTYPE(*arg)==SVt_PVGV)
			array = GvAVn((GV*)*arg);          /* glob */
		else
			array = (AV *) SvRV(*arg);   /* reference */

		/* Pack each array element */

		n = av_len(array); 
		for (i=0; i<=n; i++) {

			/* To curse is human, to recurse divine */
			pack_element(work, av_fetch(array, i, 0), datatype );
		}
		return;
	}

	errexit:
	croak("Routine can only handle scalars or refs to N-D arrays of scalars");
}

void unpack2D( SV * arg, void * var, long *dims, int datatype) {
	long i,skip;
	AV *array;
	char * tmp_var = (char *)var;

	if (!PerlyUnpacking(-1)) {
		unpack2scalar(arg,var,dims[0]*dims[1],datatype);
		return;
	}

	coerce1D(arg,dims[0]);
	array = (AV*)SvRV(arg);

	skip = dims[1] * sizeof_datatype(datatype);
	for (i=0;i<dims[0];i++) {
		unpack1D(*av_fetch(array,i,0),tmp_var,dims[1],datatype);
		tmp_var += skip;
	}
}

void unpack3D( SV * arg, void * var, long *dims, int datatype) {
	long i,j,skip;
	AV *array1,*array2;
	SV *tmp_sv;
	char *tmp_var = (char *)var;

	if (!PerlyUnpacking(-1)) {
		unpack2scalar(arg,var,dims[0]*dims[1]*dims[2],datatype);
		return;
	}

	coerce1D(arg,dims[0]);
	array1 = (AV*)SvRV(arg);

	skip = dims[2] * sizeof_datatype(datatype);
	for (i=0;i<dims[0];i++) {
		tmp_sv = *av_fetch(array1,i,0);
		coerce1D(tmp_sv,dims[1]);
		array2 = (AV*)SvRV(tmp_sv);
		for (j=0;j<dims[1];i++) {
			unpack1D(*av_fetch(array2,j,0),tmp_var,dims[2],datatype);
			tmp_var += skip;
		}
	}
}

void unpackND ( SV * arg, void * var, int ndims, long *dims, int datatype ) {
	int i;
	long *places, skip, ndata, nbytes, written;
	AV **avs;
	char *tmp_var = (char *)var;

	ndata = 1;
	for (i=0;i<ndims;i++)
		ndata *= dims[i];
	nbytes = ndata * sizeof_datatype(datatype);

	if (!PerlyUnpacking(-1)) {
		unpack2scalar(arg,var,ndata,datatype);
		return;
	}

	places = malloc((ndims-1) * sizeof(long));
	for (i=0;i<ndims-1;i++)
		places[i] = 0;
	avs = malloc((ndims-1) * sizeof(AV*));

	coerceND(arg,ndims,dims);

	avs[0] = (AV*)SvRV(arg);
	skip = dims[ndims-1] * sizeof_datatype(datatype);

	written = 0;
	while (written < nbytes) {
		for (i=1;i<ndims-1;i++)
			avs[i] = (AV*)SvRV(*av_fetch(avs[i-1],places[i-1],0));

		unpack1D(*av_fetch(avs[ndims-2],places[ndims-2],0),tmp_var,dims[ndims-1],datatype);
		tmp_var += skip;
		written += skip;

		places[ndims-2]++;
		for (i=ndims-2;i>=0; i--) {
			if (places[i] >= dims[i]) {
				places[i] = 0;
				places[i-1]++;
			}
			else
				break;
		}
	}
	free(places);
	free(avs);
}

/* set argument's value to (copied) data */
void unpack2scalar ( SV * arg, void * var, long n, int datatype ) {
	SV* tmp;

	sv_setpvn(arg,(char *)var,n*sizeof_datatype(datatype));

	/* this sets the value of the scalar to the data address
	tmp = newSVpvn((char *)var,n*sizeof_datatype(datatype));
	sv_setpvn(arg, (char *)&var,sizeof(void *));
	*/

	return;
}

/* Takes a pointer to a single value of any given type, puts
 * that value into the passed Perl scalar
 *
 * Note that type TSTRING does _not_ imply a (char **) was passed,
 * but rather a (char *).
 */
void unpackScalar(SV * arg, void * var, int datatype) {
	SV* tmp_sv[2];

	if (var == NULL) {
		sv_setpvn(arg,"",0);
		return;
	}
	switch (datatype) {
		case TSTRING:
			sv_setpv(arg,(char *)var); break;
		case TLOGICAL:
			sv_setiv(arg,(IV)(*(logical *)var)); break;
		case TBYTE:
			sv_setiv(arg,(IV)(*(byte *)var)); break;
		case TUSHORT:
			sv_setnv(arg,(double)(*(unsigned short *)var)); break;
		case TSHORT:
			sv_setiv(arg,(IV)(*(short *)var)); break;
		case TUINT:
			sv_setnv(arg,(double)(*(unsigned int *)var)); break;
		case TINT:
			sv_setiv(arg,(IV)(*(int *)var)); break;
		case TULONG:
			sv_setnv(arg,(double)(*(unsigned long *)var)); break;
		case TLONG:
			sv_setnv(arg,(double)(*(long *)var)); break;
		case TFLOAT:
			sv_setnv(arg,(double)(*(float *)var)); break;
		case TDOUBLE:
			sv_setnv(arg,(double)(*(double *)var)); break;
		case TCOMPLEX:
			tmp_sv[0] = newSVnv(*((float *)var));
			tmp_sv[1] = newSVnv(*((float *)var+1));
			sv_setsv(arg,newRV_noinc((SV*)av_make(2,tmp_sv)));
			SvREFCNT_dec(tmp_sv[0]);
			SvREFCNT_dec(tmp_sv[1]);
			break;
		case TDBLCOMPLEX:
			tmp_sv[0] = newSVnv(*((double *)var));
			tmp_sv[1] = newSVnv(*((double *)var+1));
			sv_setsv(arg,newRV_noinc((SV*)av_make(2,tmp_sv)));
			SvREFCNT_dec(tmp_sv[0]);
			SvREFCNT_dec(tmp_sv[1]);
			break;
		default:
			croak("unpackScalar() - invalid type (%d) given",datatype);
	}
	return;
}

void unpack1D ( SV * arg, void * var, long n, int datatype ) {

	char ** stringvar;
	logical * logvar;
	byte * bvar;
	unsigned short * usvar;
	short * svar;
	unsigned int * uivar;
	int * ivar;
	unsigned long * ulvar;
	long * lvar;
	float * fvar;
	double * dvar;
	SV *tmp_sv[2];
	AV *array;
	I32 i,m;

	if (!PerlyUnpacking(-1) && datatype != TSTRING) {
		unpack2scalar(arg,var,n,datatype);
		return;
	}

	m=n;
	array = coerce1D( arg, m );

	if (m==0) 
		m = av_len(array)+1;  

	switch (datatype) {
		case TSTRING:                      /* array of strings, I suppose */
			stringvar = (char **)var;
			for (i=0; i<m; i++)
				av_store(array,i,newSVpv(stringvar[i],0));
			break;
		case TLOGICAL:
			logvar = (logical *) var;
			for(i=0; i<m; i++)
				av_store(array, i, newSViv( (IV)logvar[i] ));
			break;
		case TBYTE:
			bvar = (byte *) var;
			for(i=0; i<m; i++)
				av_store(array, i, newSViv( (IV)bvar[i] ));
			break;
		case TUSHORT:
			usvar = (unsigned short *) var;
			for(i=0; i<m; i++)
				av_store(array, i, newSVnv( (double)usvar[i] ));
			break;
		case TSHORT:
			svar = (short *) var;
			for(i=0; i<m; i++)
				av_store(array, i, newSViv( (IV)svar[i] ));
			break;
		case TUINT:
			uivar = (unsigned int *) var;
			for(i=0; i<m; i++)
				av_store(array, i, newSVnv( (double)uivar[i] ));
			break;
		case TINT:
			ivar = (int *) var;
			for(i=0; i<m; i++)
				av_store(array, i, newSViv( (IV)ivar[i] ));
			break;
		case TULONG:
			ulvar = (unsigned long *) var;
			for(i=0; i<m; i++)
				av_store(array, i, newSVnv( (double)ulvar[i] ));
			break;
		case TLONG:
			lvar = (long *) var;
			for(i=0; i<m; i++)
				av_store(array, i, newSVnv( (double)lvar[i] ));
			break;
		case TFLOAT:
			fvar = (float *) var;
			for(i=0; i<m; i++)
				av_store(array, i, newSVnv( (double)fvar[i] ));
			break;
		case TDOUBLE:
			dvar = (double *) var;
			for(i=0; i<m; i++)
				av_store(array, i, newSVnv( (double)dvar[i] ));
			break;
		case TCOMPLEX:
			fvar = (float *) var;
			for (i=0; i<m; i++) {
				tmp_sv[0] = newSVnv( (double)fvar[2*i] );
				tmp_sv[1] = newSVnv( (double)fvar[2*i+1] );
				av_store(array, i, newRV((SV *)av_make(2,tmp_sv)));
				SvREFCNT_dec(tmp_sv[0]); SvREFCNT_dec(tmp_sv[1]); 
			}
			break;
		case TDBLCOMPLEX:
			dvar = (double *) var;
			for (i=0; i<m; i++) {
				tmp_sv[0] = newSVnv( (double)dvar[2*i] );
				tmp_sv[1] = newSVnv( (double)dvar[2*i+1] );
				av_store(array, i, newRV_noinc((SV*)(av_make(2,tmp_sv))));
				SvREFCNT_dec(tmp_sv[0]); SvREFCNT_dec(tmp_sv[1]); 
			}
			break;
		default:
			croak("unpack1D() - invalid datatype (%d)",datatype);
	}
	return;
}

AV* coerce1D ( SV* arg, long n) {
	AV* array;
	I32 i;

	if (is_scalar_ref(arg))
		return (AV*)NULL;

	if (SvTYPE(arg)==SVt_PVGV)
		array = GvAVn((GV*)arg);
	else if (SvROK(arg) && SvTYPE(SvRV(arg))==SVt_PVAV)
		array = (AV *) SvRV(arg);
	else {
		array = newAV();
		sv_setsv(arg, newRV((SV*) array));
	}

	for (i=av_len(array)+1; i<n; i++)
		av_store( array, i, newSViv( (IV) 0 ) );

	return array;
}

AV* coerceND (SV *arg, int ndims, long *dims) {
	AV* array;
	I32 j;

	if (!ndims || (array=coerce1D(arg,dims[0])) == NULL)
		return (AV *)NULL;

	for (j=0; j<dims[0]; j++)
		coerceND(*av_fetch(array,j,0),ndims-1,dims+1);

	return array;
}

void* get_mortalspace( long n, int datatype ) {
	SV* work = sv_2mortal(newSVpv("", 0));;
	SvGROW(work,sizeof_datatype(datatype)*n);
	return (void *) SvPV(work, na);
}

int sizeof_datatype(int datatype) {
	switch (datatype) {
		case TSTRING:
			return sizeof(char *);
		case TLOGICAL:
			return sizeof(logical);
		case TBYTE:
			return sizeof(byte);
		case TUSHORT:
			return sizeof(unsigned short);
		case TSHORT:
			return sizeof(short);
		case TUINT:
			return sizeof(unsigned int);
		case TINT:
			return sizeof(int);
		case TULONG:
			return sizeof(unsigned long);
		case TLONG:
			return sizeof(long);
		case TFLOAT:
			return sizeof(float);
		case TDOUBLE:
			return sizeof(double);
		case TCOMPLEX:
			return 2*sizeof(float);
		case TDBLCOMPLEX:
			return 2*sizeof(double);
		default:
			croak("sizeof_datatype() - invalid datatype (%d) given",datatype);
	}
}
