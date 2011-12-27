package Acme::KamenriderFourze::Switch::Chainsaw;

use strict;
use warnings;

use base qw(Acme::KamenriderFourze::Switch::Base);

sub info {
    return (
        no         => 8,
        name       => 'カメラ',
        pos        => 2,
        states     => undef,
        status     => 'off',
    );
}

1;

