package CFITSIO;

require 5.005;
use strict;
use Carp;

require Astro::FITS::CFITSIO;
use AutoLoader 'AUTOLOAD';

carp("The CFITSIO module has been superceded by Astro::FITS::CFITSIO, please use it instead");

$CFITSIO::{$_} = $Astro::FITS::CFITSIO::{$_} for
  grep $_ ne 'VERSION', keys %Astro::FITS::CFITSIO::;

use vars qw( $VERSION );

$VERSION = '0.96';

1;

__END__

=head1 NAME

CFITSIO - obsolete module for FITS file manipulation

=head1 SYNOPSIS

  use Astro::FITS::CFITSIO; # instead

=head1 DESCRIPTION

This module has been superceded by Astro::FITS::CFITSIO. This final
version of the CFITSIO module is for provided for backwards compatibility.

=head2 EXPORT

See the documentation for Astro::FITS::CFITSIO.

=head1 AUTHOR

Pete Ratzlaff <pratzlaff@cfa.harvard.edu>

=head1 SEE ALSO

perldoc Astro::FITS::CFITSIO

=cut
