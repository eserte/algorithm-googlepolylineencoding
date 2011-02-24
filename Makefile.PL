# -*- perl -*-
use 5.006; # sprintf("%b")
use ExtUtils::MakeMaker;

my $eumm_recent_enough = $ExtUtils::MakeMaker::VERSION >= 6.54;

if (!$eumm_recent_enough) {
    *MY::dist_core = sub {
	<<'EOF';
dist :
	$(NOECHO) $(ECHO) "Sorry, use a newer EUMM!"

EOF
    };
}

WriteMakefile(NAME          => 'Algorithm::GooglePolylineEncoding',
	      AUTHOR        => 'Slaven Rezic <srezic@cpan.org>',
	      VERSION_FROM  => 'GooglePolylineEncoding.pm',
	      ABSTRACT_FROM => 'GooglePolylineEncoding.pm',
	      LICENSE       => 'perl',
	      ($eumm_recent_enough
	       ? (META_MERGE => { resources => { repository => 'git://github.com/eserte/algorithm-googlepolylineencoding.git' },
				  no_index => { directory => [qw(xt)] },
				})
	       : ()
	      ),
	     );
