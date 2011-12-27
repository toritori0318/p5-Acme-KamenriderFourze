package Acme::KamenriderFourze::States::Eleki;

use strict;
use warnings;

use base qw(Acme::KamenriderFourze::Switch::Base);

sub info {
    return (
        name   => 'エレキステイツ',
        weapon => 'ビリーザロッド',
    );
}

1;

