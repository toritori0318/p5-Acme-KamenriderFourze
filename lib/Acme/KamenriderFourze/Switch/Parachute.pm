package Acme::KamenriderFourze::Switch::Parachute;

use strict;
use warnings;

use base qw(Acme::KamenriderFourze::Switch::Base);

sub info {
    return (
        no         => 7,
        name       => 'パラシュート',
        pos        => 4,
        states     => undef,
        status     => 'off',
    );
}

1;

