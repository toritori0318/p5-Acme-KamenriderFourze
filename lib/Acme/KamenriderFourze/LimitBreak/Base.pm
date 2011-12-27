package Acme::KamenriderFourze::LimitBreak::Base;

use strict;
use warnings;
use base qw(Class::Accessor);
use Class::Load qw/load_class/;
use Term::ANSIColor qw(colored);

__PACKAGE__->mk_accessors(qw(
   name
   bgm
   states
   switch
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
    my %info = $self->info;
    $self->{$_} = $info{$_} for keys %info;
    my @switch_class;
    for my $class (@{$self->{switch}}) {
        return if ref($class) ne '';
        my $module_name = "Acme::KamenriderFourze::Switch::${class}";
        load_class($module_name);
        push @switch_class, $module_name->new;
    }
    $self->{switch} = \@switch_class;
}

1;
