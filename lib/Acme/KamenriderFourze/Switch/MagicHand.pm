package Acme::KamenriderFourze::Switch::MagicHand;

use strict;
use warnings;

use base qw(Acme::KamenriderFourze::Switch::Base);

sub info {
    return (
        no         => 5,
        name       => 'マジックハンド',
        pos        => 1,
        states     => undef,
        status     => 'off',
    );
}

1;

