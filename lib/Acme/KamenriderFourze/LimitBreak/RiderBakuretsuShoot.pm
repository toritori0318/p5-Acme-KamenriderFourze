package Acme::KamenriderFourze::LimitBreak::RiderBakuretsuShoot;

use strict;
use warnings;

use base qw(Acme::KamenriderFourze::LimitBreak::Base);

sub info {
    return (
        name   => 'ライダー爆熱シュート',
        bgm    => 'ライダー爆熱シューーーート！',
        states => 'Fire',
        switch => ['Fire'],
    );
}

1;

