#!/usr/bin/perl

use strict;
use blib;

use CFITSIO qw( :constants );
use PDL;

CFITSIO::PerlyUnpacking(0);

my ($fptr,$file,$status,$ycol,$i,$nrows,$anynul,$pdl);

$file = @ARGV ? shift : 'bintable.fits';

#
# open file, move to proper HDU
#
$fptr = CFITSIO::open_file($file,READONLY,$status);
	check_status($status);
$fptr->movnam_hdu(ANY_HDU,'EVENTS',0,$status);
	check_status($status);

#
# get number of rows in table, this needs to be fixed so we can give it
# undef's instead of creating a bunch of unwanted variables
#
#$fptr->read_btblhdr(0,$nrows,$tfields,$ttype,$tform,$tunit,$extname,$pcount,$status);
$fptr->read_btblhdr(0,$nrows,undef,undef,undef,undef,undef,undef,$status);
	check_status($status);

#
# find out which column the Y event coordinates are stored in
#
$fptr->get_colnum(0,'Y',$ycol,$status);
($status == COL_NOT_FOUND) and "$0: could not find TTYPE 'Y' in binary table";

#
# make piddle, read data
#
$pdl = zeroes($nrows)->long;
$fptr->read_col_lng($ycol,1,1,$nrows,0,${$pdl->get_dataref},$anynul,$status);
	check_status($status);

#
# create Y position histogram, plot data
#
my $hist = $pdl->hist($pdl->min,$pdl->max,1.0);
my $y = $hist->sequence + $pdl->min;
line $y, $hist;

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
