package Acme::KamenriderFourze::Switch::Stealth;

use strict;
use warnings;

use base qw(Acme::KamenriderFourze::Switch::Base);

sub info {
    return (
        no         => 21,
        name       => 'ステルス',
        pos        => 2,
        states     => undef,
        status     => 'off',
    );
}

1;

