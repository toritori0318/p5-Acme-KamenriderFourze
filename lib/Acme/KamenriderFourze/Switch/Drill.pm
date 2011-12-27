package Acme::KamenriderFourze::Switch::Drill;

use strict;
use warnings;

use base qw(Acme::KamenriderFourze::Switch::Base);

sub info {
    return (
        no         => 3,
        name       => 'ドリル',
        pos        => 3,
        states     => undef,
        status     => 'off',
    );
}

1;

