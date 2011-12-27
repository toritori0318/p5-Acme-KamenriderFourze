package Acme::KamenriderFourze::Switch::Smoke;

use strict;
use warnings;

use base qw(Acme::KamenriderFourze::Switch::Base);

sub info {
    return (
        no         => 14,
        name       => 'スモーク',
        pos        => 2,
        states     => undef,
        status     => 'off',
    );
}

1;

