#!/usr/bin/perl

use strict;
use blib;

#
# Read FITS image, unpacking data into scalar. Make a piddle and
# display the image.
#

use CFITSIO;
use PDL;
use Carp;

require "check_status.pl";
require "match_datatype.pl";

my $status = 0;

#
# open file
#
my $file = @ARGV ? shift : 'm51.fits';
my $fptr = CFITSIO::open_file($file, CFITSIO::READONLY(), $status);
check_status($status) or die;

#
# read dimensions of image and data storage type
#
my ($naxes, $bitpix);
$fptr->get_img_parm($bitpix,undef,$naxes,$status);
my ($naxis1,$naxis2) = @$naxes;

my %read_funcs = (
		CFITSIO::TBYTE()   => \&CFITSIO::fits_read_2d_byt,
		CFITSIO::TSHORT()  => \&CFITSIO::fits_read_2d_sht,
		CFITSIO::TUSHORT() => \&CFITSIO::fits_read_2d_usht,
		CFITSIO::TINT()    => \&CFITSIO::fits_read_2d_int,
		CFITSIO::TUINT()   => \&CFITSIO::fits_read_2d_uint,
		CFITSIO::TLONG()   => \&CFITSIO::fits_read_2d_lng,
		CFITSIO::TULONG()  => \&CFITSIO::fits_read_2d_ulng,
		CFITSIO::TFLOAT()  => \&CFITSIO::fits_read_2d_flt,
		CFITSIO::TDOUBLE() => \&CFITSIO::fits_read_2d_dbl,
);

#
# This does not take into account BSCALE and BZERO
#
my %pdl_funcs = (
		 '8'   => { 'pdl' => \&byte, },
		 '16'  => { 'pdl' => \&short, },
		 '32'  => { 'pdl' => \&long, },
		 '-32' => { 'pdl' => \&float, },
		 '-64' => { 'pdl' => \&double, },
);

exists $pdl_funcs{$bitpix} or
    $fptr->close_file($status),
    croak "unhandled BITPIX = $bitpix";

my $cfitsio_datatype = match_datatype(&{$pdl_funcs{$bitpix}{pdl}});
exists $read_funcs{$cfitsio_datatype} or 
    croak "unhandled CFITSIO datatype = $cfitsio_datatype";

print STDERR "Reading ${naxis2}x${naxis1} image...";

CFITSIO::PerlyUnpacking(0);
my $pdl = &{$pdl_funcs{$bitpix}{'pdl'}} (zeroes($naxis1,$naxis2));
&{$read_funcs{$cfitsio_datatype}}
  ($fptr,1,0,$naxis1,$naxis1,$naxis2,${$pdl->get_dataref},undef,$status);
CFITSIO::PerlyUnpacking(1);

print STDERR "done\n";

$pdl->upd_data;
$fptr->close_file($status);

check_status($status) or die;


#
# have a look
#
imag $pdl;
