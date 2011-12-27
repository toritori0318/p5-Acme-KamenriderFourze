package Acme::KamenriderFourze::Switch::Beat;

use strict;
use warnings;

use base qw(Acme::KamenriderFourze::Switch::Base);

sub info {
    return (
        no         => 12,
        name       => 'ビート',
        pos        => 2,
        states     => undef,
        status     => 'off',
    );
}

1;

