package Acme::KamenriderFourze::Switch::Scissors;

use strict;
use warnings;

use base qw(Acme::KamenriderFourze::Switch::Base);

sub info {
    return (
        no         => 11,
        name       => 'シザーズ',
        pos        => 4,
        states     => undef,
        status     => 'off',
    );
}

1;

