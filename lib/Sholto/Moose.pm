package Sholto::Moose;
use Moose::Util::TypeConstraints;
use Moose;

subtype 'Tweet',
    as 'Str',
    where { length($_) <= 140 },
    message {
        my $length = length($_);
        "Tweets must be less than 140 characters (not $length characters!)"  
    },
;

has site => (isa => 'Int', is => 'ro', required => 1);
has pipe => (isa => 'Int', is => 'ro', required => 0, default => sub{ '1' });
has name => (isa => 'Str', is => 'rw', required => 1);
has tweet => (isa => 'Tweet', is => 'rw', required => 0);

sub display {
    my ($self) = @_;

    my $string =  join(" ", $self->name, "(", $self->site, ")");

    if (my $pipe = $self->pipe) {
        $string .= " pipe: $pipe";
    }

    return $string;
}

1;
