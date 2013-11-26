package Sholto;

use 5.006;
use strict;
use warnings;

=head1 NAME

Sholto - The great new Sholto!

=head1 VERSION

Version 0.01

=cut

our $VERSION = '0.01';

=head2 run

    Sholto->run('IMPORT', debug => 1 );

=cut

use constant SUCCESS => 1;
use constant FAIL    => 0;

sub run {
    my ($class, $tag, %options) = @_; 

    if ($tag eq 'IMPORT') {
        return SUCCESS;
    }

    foreach my $row (...) {
        $row->{length} = $class->feet2metres( $row->{length} );
    }

    return FAIL;
}

=head2 feet2metres

    my $metres = Sholto->feet2metres( $feet );

Blah blah blah.

=cut

sub feet2metres {
    my ($class, $feet) = @_;

    return $feet * 0.3048;
}

=head1 SYNOPSIS

Quick summary of what the module does.

Perhaps a little code snippet.

    use Sholto;

    my $foo = Sholto->new();
    ...

=head1 EXPORT

A list of functions that can be exported.  You can delete this section
if you don't export anything, such as for a purely object-oriented module.

=head1 SUBROUTINES/METHODS

=head2 function1

=cut

sub function1 {
}

=head2 function2

=cut

sub function2 {
}

=head1 AUTHOR

Paul Fenwick, C<< <pjf at cpan.org> >>

=head1 BUGS

Please report any bugs or feature requests to C<bug-sholto at rt.cpan.org>, or through
the web interface at L<http://rt.cpan.org/NoAuth/ReportBug.html?Queue=Sholto>.  I will be notified, and then you'll
automatically be notified of progress on your bug as I make changes.




=head1 SUPPORT

You can find documentation for this module with the perldoc command.

    perldoc Sholto


You can also look for information at:

=over 4

=item * RT: CPAN's request tracker (report bugs here)

L<http://rt.cpan.org/NoAuth/Bugs.html?Dist=Sholto>

=item * AnnoCPAN: Annotated CPAN documentation

L<http://annocpan.org/dist/Sholto>

=item * CPAN Ratings

L<http://cpanratings.perl.org/d/Sholto>

=item * Search CPAN

L<http://search.cpan.org/dist/Sholto/>

=back


=head1 ACKNOWLEDGEMENTS


=head1 LICENSE AND COPYRIGHT

Copyright 2013 Paul Fenwick.

This program is free software; you can redistribute it and/or modify it
under the terms of either: the GNU General Public License as published
by the Free Software Foundation; or the Artistic License.

See http://dev.perl.org/licenses/ for more information.


=cut

1; # End of Sholto
