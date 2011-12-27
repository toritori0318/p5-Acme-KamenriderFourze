package Acme::KamenriderFourze::LimitBreak::RiderTenBillionBoltBreak;

use strict;
use warnings;

use base qw(Acme::KamenriderFourze::LimitBreak::Base);

sub info {
    return (
        name   => 'ライダー100億ボルトブレイク',
        bgm    => 'ライダー100億ボルトブレイーーーク！',
        states => 'Eleki',
        switch => ['Eleki'],
    );
}

1;

