package Acme::KamenriderFourze::States::Fire;

use strict;
use warnings;

use base qw(Acme::KamenriderFourze::Switch::Base);

sub info {
    return (
        name   => 'ファイアステイツ',
        weapon => 'ヒーハックガン',
    );
}

1;

