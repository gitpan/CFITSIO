use ExtUtils::MakeMaker;
# See lib/ExtUtils/MakeMaker.pm for details of how to influence
# the contents of the Makefile that is written.
WriteMakefile(
    'NAME'		=> 'CFITSIO',
    'VERSION_FROM'	=> 'CFITSIO.pm', # finds $VERSION
    'PREREQ_PM'		=> { Astro::FITS::CFITSIO => '1.00' },
);
