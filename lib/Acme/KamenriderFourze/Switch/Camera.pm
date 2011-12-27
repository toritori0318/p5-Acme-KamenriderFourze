package Acme::KamenriderFourze::Switch::Camera;

use strict;
use warnings;

use base qw(Acme::KamenriderFourze::Switch::Base);

sub info {
    return (
        no         => 6,
        name       => 'カメラ',
        pos        => 4,
        states     => undef,
        status     => 'off',
    );
}

1;

