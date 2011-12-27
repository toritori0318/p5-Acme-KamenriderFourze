package Acme::KamenriderFourze::Switch::Fire;

use strict;
use warnings;

use base qw(Acme::KamenriderFourze::Switch::Base);

sub info {
    return (
        no         => 20,
        name       => 'ファイヤー',
        pos        => 1,
        states     => 'Fire',
        status     => 'off',
    );
}

1;

