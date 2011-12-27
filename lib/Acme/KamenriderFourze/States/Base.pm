package Acme::KamenriderFourze::States::Base;

use strict;
use warnings;
use base qw(Class::Accessor);
use Class::Load qw/load_class/;
use Term::ANSIColor qw(colored);

__PACKAGE__->mk_accessors(qw(
   name
   weapon
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
    printf "%s発動！\n", $self->name;
}

1;


