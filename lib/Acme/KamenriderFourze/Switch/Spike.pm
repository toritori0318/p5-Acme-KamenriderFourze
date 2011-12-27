package Acme::KamenriderFourze::Switch::Spike;

use strict;
use warnings;

use base qw(Acme::KamenriderFourze::Switch::Base);

sub info {
    return (
        no         => 15,
        name       => 'スパイク',
        pos        => 3,
        states     => undef,
        status     => 'off',
    );
}

1;

