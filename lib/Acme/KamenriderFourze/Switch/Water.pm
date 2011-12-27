package Acme::KamenriderFourze::Switch::Water;

use strict;
use warnings;

use base qw(Acme::KamenriderFourze::Switch::Base);

sub info {
    return (
        no         => 23,
        name       => 'ウォーター',
        pos        => 3,
        states     => undef,
        status     => 'off',
    );
}

1;

