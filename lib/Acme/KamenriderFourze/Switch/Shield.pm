package Acme::KamenriderFourze::Switch::Shield;

use strict;
use warnings;

use base qw(Acme::KamenriderFourze::Switch::Base);

sub info {
    return (
        no         => 18,
        name       => 'シールド',
        pos        => 4,
        states     => undef,
        status     => 'off',
    );
}

1;

