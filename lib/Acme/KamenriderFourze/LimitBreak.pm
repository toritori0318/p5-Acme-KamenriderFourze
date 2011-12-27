package Acme::KamenriderFourze::LimitBreak;

use strict;
use warnings;
use base qw(Class::Accessor);
use Term::ANSIColor qw(colored);

use Class::Load qw/load_class/;

__PACKAGE__->mk_accessors(qw/list/);

my @limitbreak_class = qw/
Pen
RiderBakuretsuShoot
RiderRocketDrillKick
RiderTenBillionBoltBreak
/;

sub new {
    my $class = shift;
    my $self  = bless {list => undef }, $class;

    $self->_initialize;
    return $self;
}

sub _initialize {
    my $self = shift;
    for my $class (@limitbreak_class) {
        my $module_name = "Acme::KamenriderFourze::LimitBreak::${class}";
        load_class($module_name);
        push @{$self->{list}}, $module_name->new;
    }
}

1;
