package Acme::KamenriderFourze::Switch::Pen;

use strict;
use warnings;

use base qw(Acme::KamenriderFourze::Switch::Base);

sub info {
    return (
        no         => 25,
        name       => 'ペン',
        pos        => 2,
        states     => undef,
        status     => 'off',
    );
}

1;

