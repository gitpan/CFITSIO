#!/usr/bin/perl

use strict;
use blib;

#
# Read FITS image, unpacking data into Perl array.
# Display image with PGPLOT
#

use CFITSIO qw( READONLY TSTRING TLONG );
use PGPLOT;

#
# open FITS file
#

my $file = @ARGV ? shift : 'm51.fits';
my $status = 0;
my $fptr = CFITSIO::open_file($file,READONLY,$status);
check_status($status);

#
# read dimensions of image
#
my ($naxis1,$naxis2);
$fptr->read_key(TSTRING,'NAXIS1',$naxis1,undef,$status);
	check_status($status);
$fptr->read_key(TSTRING,'NAXIS2',$naxis2,undef,$status);
	check_status($status);

#
# read image into $array, close file
#
print "Reading ${naxis2}x${naxis1} image...";
my ($array,$anynul);
$fptr->read_2d_lng(1,0,$naxis1,$naxis1,$naxis2,$array,$anynul,$status);
print "done\n";
	check_status($status);
$fptr->close_file($status);
	check_status($status);

#
# have a look
#
pgbeg(0,'/xs',1,1);
pgenv(0,$naxis2-1,0,$naxis1-1,0,0);
pgimag($array,$naxis2,$naxis1,1,$naxis2,1,$naxis1,0,400,[0,1,0,0,0,1]);
pgend();

exit;

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
