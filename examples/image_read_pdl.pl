#!/usr/bin/perl

use strict;
use blib;

my ($file,$fptr,$status,$naxis1,$naxis2,$array,$anynul,$pdl,$bitpix);

#
# Read FITS image, unpacking data into scalar. Make a piddle and
# display the image.
#

use CFITSIO qw( :DEFAULT :constants );
use PDL;

CFITSIO::PerlyUnpacking(0);
$status = 0;

#
# open file
#
$file = @ARGV ? shift : 'm51.fits';
$fptr = CFITSIO::open_file($file, READONLY, $status);
check_status($status);

#
# read dimensions of image and data storage type
#
$fptr->read_key(TSTRING,'NAXIS1',$naxis1,undef,$status);
	check_status($status);
$fptr->read_key(TSTRING,'NAXIS2',$naxis2,undef,$status);
	check_status($status);
$fptr->read_key(TLONG,'BITPIX',$bitpix,undef,$status);
	check_status($status);

#
# read image, output goes into $pdl's data scalar, close file
#

print "Reading ${naxis2}x${naxis1} image...";
for ($bitpix) {
	(8 == $_) and do {
		$pdl = zeroes($naxis2,$naxis1)->byte;
		$fptr->read_2d_byt(1,0,$naxis1,$naxis1,$naxis2,${$pdl->get_dataref},$anynul,$status);
		last;
	};
	(16 == $_) and do {
		$pdl = zeroes($naxis2,$naxis1)->short;
		$fptr->read_2d_sht(1,0,$naxis1,$naxis1,$naxis2,${$pdl->get_dataref},$anynul,$status);
		last;
	};
	(32 == $_) and do {
		$pdl = zeroes($naxis2,$naxis1)->long;
		$fptr->read_2d_lng(1,0,$naxis1,$naxis1,$naxis2,${$pdl->get_dataref},$anynul,$status);
		last;
	};
	(-32 == $_) and do {
		$pdl = zeroes($naxis2,$naxis1)->float;
		$fptr->read_2d_flt(1,0,$naxis1,$naxis1,$naxis2,${$pdl->get_dataref},$anynul,$status);
		last;
	};
	(-64 == $_) and do {
		$pdl = zeroes($naxis2,$naxis1)->double;
		$fptr->read_2d_dbl(1,0,$naxis1,$naxis1,$naxis2,${$pdl->get_dataref},$anynul,$status);
		last;
	};

	#
	# shouldn't have made it here
	#
	$fptr->close_file($status);
	die "$0: invalid BITPIX keyword (= $bitpix) in image '$file'";
}
print "done\n";
$fptr->close_file($status);
check_status($status);

#
# have a look
#
imag $pdl;

sub check_status {
	my $status = shift;
	my $errtxt;
	if ($status) {
		CFITSIO::fits_get_errstatus($status,$errtxt);
		print STDERR <<EOP;
$0 - CFITSIO error detected (see below), aborting

   $errtxt

EOP
		exit 1;
	}
}
