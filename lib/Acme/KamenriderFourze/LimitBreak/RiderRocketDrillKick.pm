package Acme::KamenriderFourze::LimitBreak::RiderRocketDrillKick;

use strict;
use warnings;

use base qw(Acme::KamenriderFourze::LimitBreak::Base);

sub info {
    return (
        name   => 'ライダーロケットドリルキック',
        bgm    => 'ライダーロケットドリルキッーーーク！',
        states => '',
        switch => ['Rocket', 'Drill'],
    );
}

1;

