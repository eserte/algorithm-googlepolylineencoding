# -*- perl -*-
use 5.006; # sprintf("%b")
use ExtUtils::MakeMaker;

WriteMakefile(NAME          => 'Algorithm::GooglePolylineEncoding',
	      AUTHOR        => 'Slaven Rezic <srezic@cpan.org>',
	      VERSION_FROM  => 'GooglePolylineEncoding.pm',
	      ABSTRACT_FROM => 'GooglePolylineEncoding.pm',
	      LICENSE       => 'perl',
	      ($ExtUtils::MakeMaker::VERSION >= 6.46
	       ? (META_MERGE => { resources => { repository => 'git://github.com/eserte/algorithm-googlepolylineencoding.git' },
				  no_index => { directory => [qw(xt)] },
				})
	       : ()
	      ),
	     );
