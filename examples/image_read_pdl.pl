#!/usr/bin/perl

use strict;
use blib;

#
# Read FITS image, unpacking data into scalar. Make a piddle and
# display the image.
#

use CFITSIO qw( READONLY TSTRING TLONG );
use PDL;

CFITSIO::PerlyUnpacking(0);
my $status = 0;

#
# open file
#
my $file = @ARGV ? shift : 'm51.fits';
my $fptr = CFITSIO::open_file($file, READONLY, $status);
check_status($status);

#
# read dimensions of image and data storage type
#
my ($naxis1, $naxis2, $bitpix);
$fptr->read_key(TSTRING,'NAXIS1',$naxis1,undef,$status);
	check_status($status);
$fptr->read_key(TSTRING,'NAXIS2',$naxis2,undef,$status);
	check_status($status);
$fptr->read_key(TLONG,'BITPIX',$bitpix,undef,$status);
	check_status($status);

#
# This does not take into account BSCALE and BZERO
#
my %funcs = (
	'8' => { 'pdl' => \&byte, 'cfitsio' => \&CFITSIO::read_2d_byt },
	'16' => { 'pdl' => \&short , 'cfitsio' => \&CFITSIO::fits_read_2d_sht },
	'32' => { 'pdl' => \&long, 'cfitsio' => \&CFITSIO::read_2d_lng },
	'-32' => { 'pdl' => \&float , 'cfitsio' => \&CFITSIO::read_2d_flt },
	'64' => { 'pdl' => \&double , 'cfitsio' => \&CFITSIO::read_2d_dbl },
);

my ($pdl,$anynul);
if (exists $funcs{$bitpix})
{
	print "Reading ${naxis2}x${naxis1} image...";

	$pdl = &{$funcs{$bitpix}{'pdl'}} (zeroes($naxis1,$naxis2));
	&{$funcs{$bitpix}{'cfitsio'}}($fptr,1,0,$naxis1,$naxis1,$naxis2,${$pdl->get_dataref},$anynul,$status);

	print "done\n";
	$fptr->close_file($status);

}
else
{
	$fptr->close_file($status);
	die "$0: invalid BITPIX keyword (= $bitpix) in image '$file'";
}


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
