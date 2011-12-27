package Acme::KamenriderFourze::Switch::Rocket;

use strict;
use warnings;

use base qw(Acme::KamenriderFourze::Switch::Base);

sub info {
    return (
        no         => 1,
        name       => 'ロケット',
        bgm        => 'ローケットー',
        pos        => 1,
        states     => undef,
        status     => 'off',
    );
}

1;

