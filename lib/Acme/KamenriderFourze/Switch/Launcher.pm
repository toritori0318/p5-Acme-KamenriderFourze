package Acme::KamenriderFourze::Switch::Launcher;

use strict;
use warnings;

use base qw(Acme::KamenriderFourze::Switch::Base);

sub info {
    return (
        no         => 2,
        name       => 'ランチャー',
        pos        => 2,
        states     => undef,
        status     => 'off',
    );
}

1;

