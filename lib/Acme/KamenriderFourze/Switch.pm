package Acme::KamenriderFourze::Switch;

use strict;
use warnings;
use base qw(Class::Accessor);
use Term::ANSIColor qw(colored);

use Class::Load qw/load_class/;

__PACKAGE__->mk_accessors(qw/list/);

my @switch_class = qw/
Rocket Launcher Drill Radar
MagicHand Camera Parachute Chainsaw
Hopping Eleki
Scissors Beat ChainAray Smoke
Spike Winch Flash Shield
Gatling Fire
Stealth Hammer Water Medical
Pen
/;

sub new {
    my $class = shift;
    my $self  = bless {list => undef }, $class;

    $self->_initialize;
    return $self;
}

sub _initialize {
    my $self = shift;
    for my $class (@switch_class) {
        my $module_name = "Acme::KamenriderFourze::Switch::${class}";
        load_class($module_name);
        push @{$self->{list}}, $module_name->new;
    }
}

1;
