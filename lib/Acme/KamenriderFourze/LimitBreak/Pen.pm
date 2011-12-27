package Acme::KamenriderFourze::LimitBreak::Pen;

use strict;
use warnings;

use base qw(Acme::KamenriderFourze::LimitBreak::Base);

sub info {
    return (
        name   => 'ペン・リミットブレイク',
        bgm    => 'オラオラオラオラオラオラオラオラーーー！',
        states => '',
        switch => ['Pen'],
    );
}

1;

