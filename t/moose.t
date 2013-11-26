#!/usr/bin/perl -w
use 5.010;
use strict;
use warnings;
use autodie;

use Sholto::Moose;
use Test::Most;

# Calling with no arugments should die
dies_ok { my $obj = Sholto::Moose->new(); };

my $obj = Sholto::Moose->new(
    site => 12345,
    name => 'Melbourne',
    tweet => 'Fun Fun Fun Fun Fun Fun Fun  Fun  Fun  Fun  Fun  Fun  Fun  Fun  Fun  Fun  Fun  Fun  Fun  Fun  Fun  Fun  Fun  Fun  Fun  Fun  Fun  Fun  Fun  Fun  Fun  Fun',
);

is ($obj->name, 'Melbourne', "Name test");
is ($obj->pipe, '1', "Default pipe test");

my $obj2 = Sholto::Moose->new(
    site => 12345,
    name => 'Melbourne',
    pipe => 2,              # Manually set pipe
);

is ($obj2->pipe, '2', "Manual pipe test");

my $obj2 = Sholto::Moose->new(
    site => 12345,
    name => 'Melbourne',
    pipe => 0,              # Zero pipe
);

is ($obj2->pipe, '0', "Zero pipe test");

diag($obj->display);

done_testing;
