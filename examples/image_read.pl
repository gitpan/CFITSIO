#
# Read FITS image, unpacking data into scalar. Make a piddle and
# display the image.
#

use CFITSIO;
use PDL;
use PDL::Types;

PerlyUnpacking(0);
$status = 0;

#
# open file
#
fits_open_file($fptr,"m51.fits",READONLY, $status);
check_status($status);

#
# read dimensions of image
#
fits_read_key($fptr,TSTRING,'NAXIS1',$naxis1,$comment,$status);
check_status($status);
fits_read_key($fptr,TSTRING,'NAXIS1',$naxis2,$comment,$status);
check_status($status);

#
# read image into $array
#
fits_read_2d_lng($fptr,1,0,$naxis1,$naxis1,$naxis2,$array,$anynul,$status);
check_status($status);

#
# create new PDL with proper dimensions and set data value
#
$pdl = PDL->new;
$pdl->set_datatype($PDL_L);
$pdl->setdims([$naxis2,$naxis1]);
${$dref = $pdl->get_dataref} = $array;

#
# have a look
#
imag $pdl;

sub check_status {
	my $status = shift;
	my $errtxt;
	if ($status) {
		fits_get_errstatus($status,$errtxt);
		print STDERR <<EOP;
$0 - CFITSIO error detected (see below), aborting

   $errtxt

EOP
		exit 1;
	}
}
