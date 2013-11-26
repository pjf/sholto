#!/usr/bin/perl -w
use 5.010;
use strict;
use warnings;
use autodie;

use Test::More;

require_ok('Sholto');

is(Sholto->run('IMPORT'),  1 , 'import test');
is(Sholto->run('EXPORT'), '0', 'export test');

can_ok('Sholto','feet2metres');

is(Sholto->feet2metres(1), 0.3048);
is(Sholto->feet2metres(2), 0.3048 * 2);

done_testing;
