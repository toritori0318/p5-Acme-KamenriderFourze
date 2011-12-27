package Acme::KamenriderFourze::Switch::ChainAray;

use strict;
use warnings;

use base qw(Acme::KamenriderFourze::Switch::Base);

sub info {
    return (
        no         => 13,
        name       => 'チェーンアレイ',
        pos        => 1,
        states     => undef,
        status     => 'off',
    );
}

1;

