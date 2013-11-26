#!perl -T

use Test::More tests => 1;

BEGIN {
    use_ok( 'Sholto' ) || print "Bail out!\n";
}

diag( "Testing Sholto $Sholto::VERSION, Perl $], $^X" );
