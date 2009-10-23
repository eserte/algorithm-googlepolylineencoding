#!/usr/bin/perl -w
# -*- perl -*-

#
# Author: Slaven Rezic
#

use strict;

BEGIN {
    if (!eval q{
	use Test::More;
	1;
    }) {
	print "1..0 # skip no Test::More module\n";
	exit;
    }
}

plan tests => 5;

use_ok 'Algorithm::GooglePolylineEncoding';

my @path = ({lat => 38.5,   lon => -120.2},
	    {lat => 40.7,   lon => -120.95},
	    {lat => 43.252, lon => -126.453},
	   );
is(Algorithm::GooglePolylineEncoding::encode_polyline(@path), '_p~iF~ps|U_ulLnnqC_mqNvxq`@');

is(Algorithm::GooglePolylineEncoding::encode_level(174), 'mD');

is(Algorithm::GooglePolylineEncoding::encode_number(0), '?');
is(Algorithm::GooglePolylineEncoding::encode_number(-9.99999997475243e-07), '?');

__END__
