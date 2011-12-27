package Acme::KamenriderFourze::Switch::Base;

use strict;
use warnings;
use base qw(Class::Accessor);
use Term::ANSIColor qw(colored);

# pos
#  1 maru
#  2 batsu
#  3 sankaku
#  4 shikaku

__PACKAGE__->mk_accessors(qw(
    no
    name
    bgm
    pos
    states
    status
));

sub new {
    my $class = shift;
    my $self  = bless {}, $class;

    $self->_initialize;
    return $self;
}

sub _initialize {
    my $self = shift;
    my %info = $self->info;
    $self->{$_} = $info{$_} for keys %info;
    return 1;
}

sub say {
    my ($self) = @_;
    printf "%s\n", ($self->bgm) ? $self->bgm:$self->name;
}

1;
