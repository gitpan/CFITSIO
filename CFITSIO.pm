package CFITSIO;
$VERSION = '0.10';

#use strict;
use Carp;
use vars qw($VERSION @ISA @EXPORT @EXPORT_OK $AUTOLOAD);

require Exporter;
require DynaLoader;
require AutoLoader;

@ISA = qw(Exporter DynaLoader);
@EXPORT = qw(
	PerlyUnpacking

	fits_add_group_member
	fits_ascii_tform
	fits_binary_tform
	fits_calc_rows
	fits_change_group
	fits_clear_errmsg
	fits_close_file
	fits_compact_group
	fits_compare_str
	fits_copy_col
	fits_copy_data
	fits_copy_group
	fits_copy_hdu
	fits_copy_header
	fits_copy_key
	fits_copy_member
	fits_create_file
	fits_create_group
	fits_create_hdu
	fits_create_img
	fits_create_tbl
	fits_create_template
	fits_date2str
	fits_decode_chksum
	fits_delete_col
	fits_delete_file
	fits_delete_hdu
	fits_delete_key
	fits_delete_record
	fits_delete_rowlist
	fits_delete_rows
	fits_encode_chksum
	fits_file_mode
	fits_file_name
	fits_find_nextkey
	fits_find_rows
	fits_flush_file
	fits_get_acolparms
	fits_get_bcolparms
	fits_get_chksum
	fits_get_colnum
	fits_get_colname
	fits_get_coltype
	fits_get_errstatus
	fits_get_hdrpos
	fits_get_hdrspace
	fits_get_hdu_num
	fits_get_hdu_type
	fits_get_hduaddr
	fits_get_keytype
	fits_get_num_cols
	fits_get_num_groups
	fits_get_num_hdus
	fits_get_num_members
	fits_get_num_rows
	fits_get_rowsize
	fits_get_system_time
	fits_get_tbcol
	fits_get_version
	fits_insert_atbl
	fits_insert_btbl
	fits_insert_col
	fits_insert_cols
	fits_insert_group
	fits_insert_img
	fits_insert_key_null
	fits_insert_key_str
	fits_insert_key_log
	fits_insert_key_lng
	fits_insert_key_flt
	fits_insert_key_fixflt
	fits_insert_key_dbl
	fits_insert_key_fixdbl
	fits_insert_key_cmp
	fits_insert_key_fixcmp
	fits_insert_key_dblcmp
	fits_insert_key_fixdblcmp
	fits_insert_record
	fits_insert_rows
	fits_make_keyn
	fits_make_nkey
	fits_merge_groups
	fits_modify_card
	fits_modify_comment
	fits_modify_key_null
	fits_modify_key_str
	fits_modify_key_log
	fits_modify_key_lng
	fits_modify_key_flt
	fits_modify_key_fixflt
	fits_modify_key_dbl
	fits_modify_key_fixdbl
	fits_modify_key_cmp
	fits_modify_key_fixcmp
	fits_modify_key_dblcmp
	fits_modify_key_fixdblcmp
	fits_modify_name
	fits_modify_record
	fits_modify_vector_len
	fits_movabs_hdu
	fits_movnam_hdu
	fits_movrel_hdu
	fits_open_file
	fits_open_group
	fits_open_member
	fits_parse_extnum
	fits_parse_input_url
	fits_parse_rootname
	fits_parse_template
	fits_parse_value
	fits_pix_to_world
	fits_read_2d_byt
	fits_read_2d_usht
	fits_read_2d_sht
	fits_read_2d_uint
	fits_read_2d_int
	fits_read_2d_ulng
	fits_read_2d_lng
	fits_read_2d_flt
	fits_read_2d_dbl
	fits_read_3d_byt
	fits_read_3d_usht
	fits_read_3d_sht
	fits_read_3d_uint
	fits_read_3d_int
	fits_read_3d_ulng
	fits_read_3d_lng
	fits_read_3d_flt
	fits_read_3d_dbl
	fits_read_atblhdr
	fits_read_btblhdr
	fits_read_card
	fits_read_col
	fits_read_col_bit
	fits_read_col_str
	fits_read_col_log
	fits_read_col_byt
	fits_read_col_sht
	fits_read_col_usht
	fits_read_col_int
	fits_read_col_uint
	fits_read_col_lng
	fits_read_col_ulng
	fits_read_col_flt
	fits_read_col_dbl
	fits_read_col_cmp
	fits_read_col_dblcmp
	fits_read_colnull_str
	fits_read_colnull_byt
	fits_read_colnull_log
	fits_read_colnull_lng
	fits_read_colnull_sht
	fits_read_colnull_usht
	fits_read_colnull_int
	fits_read_colnull_uint
	fits_read_colnull_lng
	fits_read_colnull_ulng
	fits_read_colnull_flt
	fits_read_colnull_dbl
	fits_read_colnull_cmp
	fits_read_colnull_dblcmp
	fits_read_descript
	fits_read_descripts
	fits_read_errmsg
	fits_read_grppar_byt
	fits_read_grppar_sht
	fits_read_grppar_usht
	fits_read_grppar_int
	fits_read_grppar_uint
	fits_read_grppar_lng
	fits_read_grppar_ulng
	fits_read_grppar_flt
	fits_read_grppar_dbl
	fits_read_img
	fits_read_img_coord
	fits_read_img_byt
	fits_read_img_sht
	fits_read_img_usht
	fits_read_img_int
	fits_read_img_uint
	fits_read_img_lng
	fits_read_img_ulng
	fits_read_img_flt
	fits_read_img_dbl
	fits_read_imghdr
	fits_read_imgnull_byt
	fits_read_imgnull_usht
	fits_read_imgnull_sht
	fits_read_imgnull_uint
	fits_read_imgnull_int
	fits_read_imgnull_ulng
	fits_read_imgnull_lng
	fits_read_imgnull_flt
	fits_read_imgnull_dbl
	fits_read_key
	fits_read_key_unit
	fits_read_key_triple
	fits_read_key_longstr
	fits_read_key_str
	fits_read_key_log
	fits_read_key_lng
	fits_read_key_flt
	fits_read_key_dbl
	fits_read_key_cmp
	fits_read_key_dblcmp
	fits_read_keyn
	fits_read_keys_str
	fits_read_keys_log
	fits_read_keys_lng
	fits_read_keys_flt
	fits_read_keys_dbl
	fits_read_keyword
	fits_read_record
	fits_read_subset_byt
	fits_read_subset_sht
	fits_read_subset_usht
	fits_read_subset_int
	fits_read_subset_uint
	fits_read_subset_lng
	fits_read_subset_ulng
	fits_read_subset_flt
	fits_read_subset_dbl
	fits_read_subsetnull_byt
	fits_read_subsetnull_sht
	fits_read_subsetnull_usht
	fits_read_subsetnull_int
	fits_read_subsetnull_uint
	fits_read_subsetnull_lng
	fits_read_subsetnull_ulng
	fits_read_subsetnull_flt
	fits_read_subsetnull_dbl
	fits_read_tbl_coord
	fits_read_tblbytes
	fits_read_tdim
	fits_remove_group
	fits_remove_member
	fits_reopen_file
	fits_report_error
	fits_resize_img
	fits_select_rows
	fits_set_atblnull
	fits_set_bscale
	fits_set_btblnull
	fits_set_hdrsize
	fits_set_hdustruc
	fits_set_imgnull
	fits_set_tscale
	fits_str2date
	fits_str2time
	fits_test_expr
	fits_test_keyword
	fits_test_record
	fits_time2str
	fits_transfer_member
	fits_update_card
	fits_update_chksum
	fits_update_key
	fits_update_key_null
	fits_update_key_str
	fits_update_key_log
	fits_update_key_lng
	fits_update_key_flt
	fits_update_key_fixflt
	fits_update_key_dbl
	fits_update_key_fixdbl
	fits_update_key_cmp
	fits_update_key_fixcmp
	fits_update_key_dblcmp
	fits_update_key_fixdblcmp
	fits_uppercase
	fits_verify_chksum
	fits_verify_group
	fits_world_to_pix
	fits_write_2d_byt
	fits_write_2d_usht
	fits_write_2d_sht
	fits_write_2d_uint
	fits_write_2d_int
	fits_write_2d_ulng
	fits_write_2d_lng
	fits_write_2d_flt
	fits_write_2d_dbl
	fits_write_3d_byt
	fits_write_3d_usht
	fits_write_3d_sht
	fits_write_3d_uint
	fits_write_3d_int
	fits_write_3d_ulng
	fits_write_3d_lng
	fits_write_3d_flt
	fits_write_3d_dbl
	fits_write_atblhdr
	fits_write_btblhdr
	fits_write_chksum
	fits_write_col
	fits_write_col_null
	fits_write_col_bit
	fits_write_col_str
	fits_write_col_log
	fits_write_col_byt
	fits_write_col_usht
	fits_write_col_sht
	fits_write_col_uint
	fits_write_col_int
	fits_write_col_ulng
	fits_write_col_lng
	fits_write_col_flt
	fits_write_col_dbl
	fits_write_col_cmp
	fits_write_col_dblcmp
	fits_write_colnull_str
	fits_write_colnull_log
	fits_write_colnull_byt
	fits_write_colnull_usht
	fits_write_colnull_sht
	fits_write_colnull_uint
	fits_write_colnull_int
	fits_write_colnull_ulng
	fits_write_colnull_lng
	fits_write_colnull_flt
	fits_write_colnull_dbl
	fits_write_comment
	fits_write_date
	fits_write_descript
	fits_write_errmsg
	fits_write_grphdr
	fits_write_grppar_byt
	fits_write_grppar_usht
	fits_write_grppar_sht
	fits_write_grppar_uint
	fits_write_grppar_int
	fits_write_grppar_ulng
	fits_write_grppar_lng
	fits_write_grppar_flt
	fits_write_grppar_dbl
	fits_write_history
	fits_write_img
	fits_write_img_null
	fits_write_img_byt
	fits_write_img_usht
	fits_write_img_sht
	fits_write_img_uint
	fits_write_img_int
	fits_write_img_ulng
	fits_write_img_lng
	fits_write_img_flt
	fits_write_img_dbl
	fits_write_imghdr
	fits_write_imgnull
	fits_write_imgnull_byt
	fits_write_imgnull_usht
	fits_write_imgnull_sht
	fits_write_imgnull_uint
	fits_write_imgnull_int
	fits_write_imgnull_ulng
	fits_write_imgnull_lng
	fits_write_imgnull_flt
	fits_write_imgnull_dbl
	fits_write_key
	fits_write_key_longstr
	fits_write_key_longwarn
	fits_write_key_null
	fits_write_key_template
	fits_write_key_triple
	fits_write_key_unit
	fits_write_key_str
	fits_write_key_log
	fits_write_key_lng
	fits_write_key_flt
	fits_write_key_fixflt
	fits_write_key_dbl
	fits_write_key_fixdbl
	fits_write_key_cmp
	fits_write_key_fixcmp
	fits_write_key_dblcmp
	fits_write_key_fixdblcmp
	fits_write_keys_str
	fits_write_keys_log
	fits_write_keys_lng
	fits_write_keys_flt
	fits_write_keys_fixflt
	fits_write_keys_dbl
	fits_write_keys_fixdbl
	fits_write_null_img
	fits_write_record
	fits_write_subset_byt
	fits_write_subset_usht
	fits_write_subset_sht
	fits_write_subset_uint
	fits_write_subset_int
	fits_write_subset_ulng
	fits_write_subset_lng
	fits_write_subset_flt
	fits_write_subset_dbl
	fits_write_tblbytes
	fits_write_tdim
	fits_write_theap

	ANGLE_TOO_BIG
	ANY_HDU
	ARRAY_TOO_BIG
	ASCII_TBL
	BAD_ATABLE_FORMAT
	BAD_BITPIX
	BAD_BTABLE_FORMAT
	BAD_C2D
	BAD_C2F
	BAD_C2I
	BAD_COL_NUM
	BAD_DATATYPE
	BAD_DATA_FILL
	BAD_DATE
	BAD_DECIM
	BAD_DIMEN
	BAD_DOUBLEKEY
	BAD_ELEM_NUM
	BAD_F2C
	BAD_FILEPTR
	BAD_FLOATKEY
	BAD_GCOUNT
	BAD_GROUP_ID
	BAD_HDU_NUM
	BAD_HEADER_FILL
	BAD_I2C
	BAD_INTKEY
	BAD_KEYCHAR
	BAD_LOGICALKEY
	BAD_NAXES
	BAD_NAXIS
	BAD_OPTION
	BAD_ORDER
	BAD_PCOUNT
	BAD_PIX_NUM
	BAD_ROW_NUM
	BAD_ROW_WIDTH
	BAD_SIMPLE
	BAD_TBCOL
	BAD_TDIM
	BAD_TFIELDS
	BAD_TFORM
	BAD_TFORM_DTYPE
	BAD_URL_PREFIX
	BAD_WCS_PROJ
	BAD_WCS_VAL
	BINARY_TBL
	BYTE_IMG
	CASEINSEN
	CASESEN
	COL_NOT_FOUND
	COL_NOT_UNIQUE
	COL_TOO_WIDE
	DOUBLENULLVALUE
	DOUBLE_IMG
	DRIVER_INIT_FAILED
	END_JUNK
	END_OF_FILE
	FALSE
	FILE_NOT_CLOSED
	FILE_NOT_CREATED
	FILE_NOT_OPENED
	FLEN_CARD
	FLEN_COMMENT
	FLEN_ERRMSG
	FLEN_FILENAME
	FLEN_KEYWORD
	FLEN_STATUS
	FLEN_VALUE
	FLOATNULLVALUE
	FLOAT_IMG
	GROUP_NOT_FOUND
	GT_ID_ALL
	GT_ID_ALL_URI
	GT_ID_POS
	GT_ID_POS_URI
	GT_ID_REF
	GT_ID_REF_URI
	HDU_ALREADY_MEMBER
	HDU_ALREADY_TRACKED
	HEADER_NOT_EMPTY
	IDENTICAL_POINTERS
	IMAGE_HDU
	InputCol
	InputOutputCol
	KEY_NO_EXIST
	KEY_OUT_BOUNDS
	LONG_IMG
	MAXHDU
	MEMBER_NOT_FOUND
	MEMORY_ALLOCATION
	NEG_AXIS
	NEG_BYTES
	NEG_FILE_POS
	NEG_ROWS
	NEG_WIDTH
	NOT_ASCII_COL
	NOT_ATABLE
	NOT_BTABLE
	NOT_GROUP_TABLE
	NOT_IMAGE
	NOT_LOGICAL_COL
	NOT_POS_INT
	NOT_TABLE
	NOT_VARI_LEN
	NO_BITPIX
	NO_END
	NO_GCOUNT
	NO_MATCHING_DRIVER
	NO_NAXES
	NO_NAXIS
	NO_NULL
	NO_PCOUNT
	NO_QUOTE
	NO_SIMPLE
	NO_TBCOL
	NO_TFIELDS
	NO_TFORM
	NO_WCS_KEY
	NO_XTENSION
	NULL_INPUT_PTR
	NUM_OVERFLOW
	OPT_CMT_MBR
	OPT_CMT_MBR_DEL
	OPT_GCP_ALL
	OPT_GCP_GPT
	OPT_GCP_MBR
	OPT_MCP_ADD
	OPT_MCP_MOV
	OPT_MCP_NADD
	OPT_MCP_REPL
	OPT_MRG_COPY
	OPT_MRG_MOV
	OPT_RM_ALL
	OPT_RM_ENTRY
	OPT_RM_GPT
	OPT_RM_MBR
	OVERFLOW_ERR
	OutputCol
	PARSE_BAD_COL
	PARSE_BAD_OUTPUT
	PARSE_BAD_TYPE
	PARSE_LRG_VECTOR
	PARSE_NO_OUTPUT
	PARSE_SYNTAX_ERR
	READONLY
	READONLY_FILE
	READWRITE
	READ_ERROR
	SAME_FILE
	SEEK_ERROR
	SHORT_IMG
	TBIT
	TBYTE
	TCOMPLEX
	TDBLCOMPLEX
	TDOUBLE
	TFLOAT
	TINT
	TLOGICAL
	TLONG
	TOO_MANY_DRIVERS
	TOO_MANY_FILES
	TOO_MANY_HDUS_TRACKED
	TRUE
	TSHORT
	TSTRING
	TUINT
	TULONG
	TUSHORT
	ULONG_IMG
	UNKNOWN_EXT
	UNKNOWN_REC
	URL_PARSE_ERROR
	USE_MEM_BUFF
	USHORT_IMG
	VALIDSTRUC
	VALUE_UNDEFINED
	WCS_ERROR
	WRITE_ERROR
	ZERO_SCALE
);

sub AUTOLOAD {
    # This AUTOLOAD is used to 'autoload' constants from the constant()
    # XS function.  If a constant is not found then control is passed
    # to the AUTOLOAD in AutoLoader.

    my $constname;
    ($constname = $AUTOLOAD) =~ s/.*:://;
    croak "& not defined" if $constname eq 'constant';
    my $val = constant($constname, @_ ? $_[0] : 0);
    if ($! != 0) {
	if ($! =~ /Invalid/) {
	    $AutoLoader::AUTOLOAD = $AUTOLOAD;
	    goto &AutoLoader::AUTOLOAD;
	}
	else {
		croak "Your vendor has not defined CFITSIO macro $constname";
	}
    }
    *$AUTOLOAD = sub { $val };
	#eval "sub $AUTOLOAD { $val }";
    goto &$AUTOLOAD;
}

bootstrap CFITSIO $VERSION;

# Preloaded methods go here.

# Autoload methods go after =cut, and are processed by the autosplit program.

1;
__END__

=head1 NAME

CFITSIO - Perl extension for using the CFITSIO library

=head1 SYNOPSIS

  use CFITSIO;

=head1 DESCRIPTION

Perl interface to William Pence's CFITSIO subroutine library. For more
information on CFITSIO, see
http://heasarc.gsfc.nasa.gov/docs/software/fitsio/fitsio.html.

This module attempts to provide a wrapper for nearly every CFITSIO routine,
although you probably won't need that much funtionality. One should also
be aware that it is still somewhat low-level, in the sense that handing an
array which is not the correct size to a routine like I<fits_write_img>
may cause SEGVs.

My goal is to eventually use these routines to build a more Perl-like
interface to many common tasks such as reading and writing of images and
ASCII and binary tables.

=head1 Available Routines

As stated above, nearly every routine is available, in the long-name
form (i.e., I<fits_read_img> instead of I<ffgpv>). You would use the
exact same arguments as in a C program, and the input and output variables are
magically transformed into whatever the C program would have intended.

=head1 Data Storage Details

=head2 Input Variables

If a routine expects an N-dimensional array as input, and you hand it a
reference to a scalar, then CFITSIO.pm simply uses the data in the scalar.
Otherwise it unpacks the array into a format that the C routine can understand.

=head2 Output Variables

Calling CFITSIO routines which read data from FITS files causes the output
variable to be transformed into a Perl array of the appropriate dimensions. The
exception to this is if one wants the output to be in the machine-native
format (e.g., for use with PDL). In this case you can use the routine I<PerlyUnpacking(0)>.
Then all output variables will become scalars containing the appropriate data. The
exception here is with routines which read arrays of strings (e.g., I<fits_read_col_str>).
In this case the output is again a Perl array reference.

=head1 Examples

Take a look at the F<testprog.pl> in the distribution directory. It should produce
output identical to the F<testprog.c> which comes with the CFITSIO library.

=head1 BUGS

=over 4

=item I<fits_open_file> causes SEGV on Solaris 2.5, Perl 5.004. This is troubling because
the xsub is very simple and doesn't even rely on any of the data packing/unpacking routines.

=item F<testprog.pl> segfaults at various places on different architectures.
Search for 'PROBLEM' in the script to see my comments on Linux and Solaris.
Certainly there is still much work to be done.

=item Have not tested the PDL-compatible unpacking stuff much. Performed a
read and imag() of m51.fits successfully though. See examples/image_read.pl.

=back

=head1 AUTHOR

Pete Ratzlaff <pratzlaff@cfa.harvard.edu>, with a great deal of code stolen
from Karl Glazebrook's PGPLOT module.

=head1 SEE ALSO

perl(1).

=head1 Exported constants

  ANGLE_TOO_BIG
  ANY_HDU
  ARRAY_TOO_BIG
  ASCII_TBL
  BAD_ATABLE_FORMAT
  BAD_BITPIX
  BAD_BTABLE_FORMAT
  BAD_C2D
  BAD_C2F
  BAD_C2I
  BAD_COL_NUM
  BAD_DATATYPE
  BAD_DATA_FILL
  BAD_DATE
  BAD_DECIM
  BAD_DIMEN
  BAD_DOUBLEKEY
  BAD_ELEM_NUM
  BAD_F2C
  BAD_FILEPTR
  BAD_FLOATKEY
  BAD_GCOUNT
  BAD_GROUP_ID
  BAD_HDU_NUM
  BAD_HEADER_FILL
  BAD_I2C
  BAD_INTKEY
  BAD_KEYCHAR
  BAD_LOGICALKEY
  BAD_NAXES
  BAD_NAXIS
  BAD_OPTION
  BAD_ORDER
  BAD_PCOUNT
  BAD_PIX_NUM
  BAD_ROW_NUM
  BAD_ROW_WIDTH
  BAD_SIMPLE
  BAD_TBCOL
  BAD_TDIM
  BAD_TFIELDS
  BAD_TFORM
  BAD_TFORM_DTYPE
  BAD_URL_PREFIX
  BAD_WCS_PROJ
  BAD_WCS_VAL
  BINARY_TBL
  BYTE_IMG
  CASEINSEN
  CASESEN
  COL_NOT_FOUND
  COL_NOT_UNIQUE
  COL_TOO_WIDE
  DOUBLENULLVALUE
  DOUBLE_IMG
  DRIVER_INIT_FAILED
  END_JUNK
  END_OF_FILE
  FALSE
  FILE_NOT_CLOSED
  FILE_NOT_CREATED
  FILE_NOT_OPENED
  FLEN_CARD
  FLEN_COMMENT
  FLEN_ERRMSG
  FLEN_FILENAME
  FLEN_KEYWORD
  FLEN_STATUS
  FLEN_VALUE
  FLOATNULLVALUE
  FLOAT_IMG
  GROUP_NOT_FOUND
  GT_ID_ALL
  GT_ID_ALL_URI
  GT_ID_POS
  GT_ID_POS_URI
  GT_ID_REF
  GT_ID_REF_URI
  HDU_ALREADY_MEMBER
  HDU_ALREADY_TRACKED
  HEADER_NOT_EMPTY
  IDENTICAL_POINTERS
  IMAGE_HDU
  InputCol
  InputOutputCol
  KEY_NO_EXIST
  KEY_OUT_BOUNDS
  LONG_IMG
  MAXHDU
  MEMBER_NOT_FOUND
  MEMORY_ALLOCATION
  NEG_AXIS
  NEG_BYTES
  NEG_FILE_POS
  NEG_ROWS
  NEG_WIDTH
  NOT_ASCII_COL
  NOT_ATABLE
  NOT_BTABLE
  NOT_GROUP_TABLE
  NOT_IMAGE
  NOT_LOGICAL_COL
  NOT_POS_INT
  NOT_TABLE
  NOT_VARI_LEN
  NO_BITPIX
  NO_END
  NO_GCOUNT
  NO_MATCHING_DRIVER
  NO_NAXES
  NO_NAXIS
  NO_NULL
  NO_PCOUNT
  NO_QUOTE
  NO_SIMPLE
  NO_TBCOL
  NO_TFIELDS
  NO_TFORM
  NO_WCS_KEY
  NO_XTENSION
  NULL_INPUT_PTR
  NUM_OVERFLOW
  OPT_CMT_MBR
  OPT_CMT_MBR_DEL
  OPT_GCP_ALL
  OPT_GCP_GPT
  OPT_GCP_MBR
  OPT_MCP_ADD
  OPT_MCP_MOV
  OPT_MCP_NADD
  OPT_MCP_REPL
  OPT_MRG_COPY
  OPT_MRG_MOV
  OPT_RM_ALL
  OPT_RM_ENTRY
  OPT_RM_GPT
  OPT_RM_MBR
  OVERFLOW_ERR
  OutputCol
  PARSE_BAD_COL
  PARSE_BAD_OUTPUT
  PARSE_BAD_TYPE
  PARSE_LRG_VECTOR
  PARSE_NO_OUTPUT
  PARSE_SYNTAX_ERR
  READONLY
  READONLY_FILE
  READWRITE
  READ_ERROR
  SAME_FILE
  SEEK_ERROR
  SHORT_IMG
  TBIT
  TBYTE
  TCOMPLEX
  TDBLCOMPLEX
  TDOUBLE
  TFLOAT
  TINT
  TLOGICAL
  TLONG
  TOO_MANY_DRIVERS
  TOO_MANY_FILES
  TOO_MANY_HDUS_TRACKED
  TRUE
  TSHORT
  TSTRING
  TUINT
  TULONG
  TUSHORT
  ULONG_IMG
  UNKNOWN_EXT
  UNKNOWN_REC
  URL_PARSE_ERROR
  USE_MEM_BUFF
  USHORT_IMG
  VALIDSTRUC
  VALUE_UNDEFINED
  WCS_ERROR
  WRITE_ERROR
  ZERO_SCALE

=cut
