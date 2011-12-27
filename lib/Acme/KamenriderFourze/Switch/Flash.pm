package Acme::KamenriderFourze::Switch::Flash;

use strict;
use warnings;

use base qw(Acme::KamenriderFourze::Switch::Base);

sub info {
    return (
        no         => 17,
        name       => 'フラッシュ',
        pos        => 1,
        states     => undef,
        status     => 'off',
    );
}

1;

