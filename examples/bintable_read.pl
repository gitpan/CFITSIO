#!/usr/bin/perl

use strict;
use blib;

use CFITSIO qw( :constants );
use PDL;
use Carp;

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
# get number of rows in table
#
$fptr->get_num_rows($nrows,$status);
	check_status($status);

#
# find out which column the Y event coordinates are stored in
#
$fptr->get_colnum(0,'Y',$ycol,$status);
($status == COL_NOT_FOUND) and
    die "$0: could not find TTYPE 'Y' in binary table";

#
# make piddle, read data
#
$pdl = zeroes($nrows)->long;
$fptr->read_col_lng($ycol,1,1,$nrows,0,${$pdl->get_dataref},$anynul,$status);
	check_status($status);
$pdl->upd_data;

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
	croak "$0: CFITSIO error, aborting...$errtxt";
    }

    return 1;
}
