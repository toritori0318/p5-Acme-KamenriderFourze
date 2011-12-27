package Acme::KamenriderFourze::Switch::Winch;

use strict;
use warnings;

use base qw(Acme::KamenriderFourze::Switch::Base);

sub info {
    return (
        no         => 16,
        name       => 'ウィンチ',
        pos        => 4,
        states     => undef,
        status     => 'off',
    );
}

1;

