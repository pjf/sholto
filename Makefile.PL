use inc::Module::Install;

name     'Sholto';
all_from 'lib/Sholto.pm';
author   q{Paul Fenwick <pjf@cpan.org>};
license  'perl';

build_requires 'Test::More';

auto_install;

WriteAll;

