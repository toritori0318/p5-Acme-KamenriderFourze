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
    my $args = ref $_[0] eq 'HASH' ? $_[0] : {@_};

    my $self = $class->SUPER::new({
        %$args
    });
    $self->_initialize;
    $self;
}

sub _initialize {
    my $self = shift;
#    my %info = $self->info;
#    $self->{$_} = $info{$_} for keys %info;
#    my @medal_class;
#    for my $class (@{$self->{medal}}) {
#        return if ref($class) ne '';
#        my $module_name = "Acme::KamenriderOOO::Medal::${class}";
#        load_class($module_name);
#        push @medal_class, $module_name->new;
#    }
#    $self->{medal} = \@medal_class;
}

1;


