package Acme::KamenriderFourze::Switch::Gatling;

use strict;
use warnings;

use base qw(Acme::KamenriderFourze::Switch::Base);

sub info {
    return (
        no         => 19,
        name       => 'ガトリング',
        pos        => 3,
        states     => undef,
        status     => 'off',
    );
}

1;

