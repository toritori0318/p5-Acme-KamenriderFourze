package Acme::KamenriderFourze::Switch::Radar;

use strict;
use warnings;

use base qw(Acme::KamenriderFourze::Switch::Base);

sub info {
    return (
        no         => 4,
        name       => 'レーダー',
        pos        => 4,
        states     => undef,
        status     => 'off',
    );
}

1;

