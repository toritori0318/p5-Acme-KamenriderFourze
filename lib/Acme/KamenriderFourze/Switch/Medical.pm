package Acme::KamenriderFourze::Switch::Medical;

use strict;
use warnings;

use base qw(Acme::KamenriderFourze::Switch::Base);

sub info {
    return (
        no         => 24,
        name       => 'メディカル',
        pos        => 4,
        states     => undef,
        status     => 'off',
    );
}

1;

