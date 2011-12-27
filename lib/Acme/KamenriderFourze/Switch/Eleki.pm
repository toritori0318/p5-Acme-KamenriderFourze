package Acme::KamenriderFourze::Switch::Eleki;

use strict;
use warnings;

use base qw(Acme::KamenriderFourze::Switch::Base);

sub info {
    return (
        no         => 10,
        name       => 'エレキ',
        pos        => 1,
        states     => 'Eleki',
        status     => 'off',
    );
}

1;

