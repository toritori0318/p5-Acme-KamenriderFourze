package Acme::KamenriderFourze::Switch::Hopping;

use strict;
use warnings;

use base qw(Acme::KamenriderFourze::Switch::Base);

sub info {
    return (
        no         => 9,
        name       => 'ホッピング',
        pos        => 3,
        states     => undef,
        status     => 'off',
    );
}

1;

