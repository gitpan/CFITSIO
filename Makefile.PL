use ExtUtils::MakeMaker;
# See lib/ExtUtils/MakeMaker.pm for details of how to influence
# the contents of the Makefile that is written.
WriteMakefile(
    'NAME'	=> 'CFITSIO',
    'VERSION_FROM' => 'CFITSIO.pm', # finds $VERSION
    'LIBS'	=> ['-L/home/rpete/cfitsio -lcfitsio -lm'],
    'INC'	=> '-I/home/rpete/cfitsio',
    'DEFINE'	=> '',
	'clean' => { FILES => "testprog.fit" },
);
