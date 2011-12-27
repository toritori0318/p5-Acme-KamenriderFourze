package Acme::KamenriderFourze::Switch::Hammer;

use strict;
use warnings;

use base qw(Acme::KamenriderFourze::Switch::Base);

sub info {
    return (
        no         => 22,
        name       => 'ハンマー',
        pos        => 4,
        states     => undef,
        status     => 'off',
    );
}

1;

