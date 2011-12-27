package Acme::KamenriderFourze;

use strict;
use warnings;
use Carp  qw(croak);
use Class::Load qw/load_class/;

our $VERSION = '0.1';

use Acme::KamenriderFourze::Driver;
use Acme::KamenriderFourze::Switch;
use Acme::KamenriderFourze::States;
use Acme::KamenriderFourze::LimitBreak;

sub new {
    my $class = shift;
    my $self  = bless {
        driver     => Acme::KamenriderFourze::Driver->new,
        switch     => Acme::KamenriderFourze::Switch->new->list,
        states     => Acme::KamenriderFourze::States->new->list,
        limitbreak => Acme::KamenriderFourze::LimitBreak->new->list,
    }, $class;

    return $self;
}

sub fourze_driver {
    my ($self, @switches) = @_;
    die 'スイッチは４つセットしよう！' if scalar @switches != 4;

    my @set_switch;
    for my $switch (@switches) {
        my @s = grep { $switch eq $_->no } @{$self->{switch}};
        if(my $sc = shift @s) {
            push @set_switch, $sc;
        }else{
            die "スイッチエラー";
        }
    }
    $self->{driver}->bulk_set(@set_switch);
}

sub henshin_switch_on {
    my ($self) = @_;
    my $driver = $self->{driver};
    die 'フォーゼドライバーにスイッチを４つセットしよう！' unless $driver && scalar @{$driver->slot_array} > 0;

    print "スイッチ オン！\n";
    my @count_down = qw/スリー ツー ワン/;
    for (@count_down) {
        print $_,"\n";
        sleep 1;
    }
    print "変身！\n\n";

    print $driver->states->name, "！\n" if $driver->states;

    print "\n";
}

sub module_switch_on {
    my ($self, %parameter) = @_;
    $self->{driver}->switch_on(%parameter);
}

sub limitbreak {
    my ($self) = @_;
    $self->{driver}->limitbreak;
}

sub select {
    my ($self, $type, $args) = @_;
    if($args && $args->{name}) {
        return grep { $args->{name} eq $_->{name} } @{$self->{$type}};
    }else{
        @{$self->{$type}};
    }
}

1;

__END__

=head1 NAME

Acme::KamenriderFourze - henshin!

=head1 SYNOPSIS

  use Acme::KamenriderFourze;

  my $fourze = Acme::KamenriderFourze->new;

  # Switch is set to the driver
  $fourze->fourze_driver( 1, 2, 3, 4 );

  #
  $fourze->henshin_switch_on;

  # Three
  # Two
  # One...
  #  Henshin！
  #   chinchinchin baooon



  # rocket on
  $fourze->module_switch_on(pos => 'maru');
  # drill on
  $fourze->module_switch_on(pos => 'sankaku');

  # limit break!
  $fourze->limitbreak;



  # switch infomation
  my @switch = $fourze->select('switch');
  my @switch = $fourze->select('switch', {no=>1});
  my @switch = $fourze->select('switch', {name=>'ドリル'});

  # states infomation
  my @states = $fourze->select('states');

  # limitbreak infomation
  my @limitbreak = $fourze->select('limitbreak');




=head1 DESCRIPTION

I'll transform to Kamenrider Fourze!

=head1 METHODS

=head2 new

=over 4

  my $fourze = Acme::KamenriderFourze->new;

Creates and returns a new Acme::KamenriderFourze object.

=back

=head2 select ($type, { name => $name } )

=over 4

  my @switch = $fourze->select('switch');
  my @switch = $fourze->select('switch', {name=>'ドリル'});
  my @states = $fourze->select('states');
  my @limitbreak = $fourze->select('limitbreak');

Returns the Acme::KamenriderFourze::Switch or Acme::KamenriderFourze::States or Acme::KamenriderFourze::LimitBreak object.

=back

=head2 fourze_driver ( $switch1, $switch2, $switch3, $switch4 )

=over 4

  $fourze->fourze_driver( 1, 2, 3, 4 );

Four switches are set to Fourze Driver....
This is preparation for transformation.

=back

=head2 henshin_switch_on

=over 4

  $fourze->henshin_switch_on;

It transform to Kamenrider Fourze!

=back

=head1 SEE ALSO

=over 4

=item * Kamenrider Fourze - Official WebPage

L<http://www.tv-asahi.co.jp/fourze/>

=back

=head1 AUTHOR

Tsuyoshi ToriiE<lt>toritori0318@gmail.com<gt>

=head1 COPYRIGHT AND LICENSE (The MIT License)

Copyright (c) 2011, Tsuyoshi Torii
E<lt>toritori0318@gmail.com<gt>

Permission is hereby granted, free of charge, to any person obtaining
a copy of this software and associated documentation files (the
"Software"), to deal in the Software without restriction, including
without limitation the rights to use, copy, modify, merge, publish,
distribute, sublicense, and/or sell copies of the Software, and to
permit persons to whom the Software is furnished to do so, subject to
the following conditions:

The above copyright notice and this permission notice shall be
included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND,
EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF
MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND
NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE
LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION
OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION
WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.

=cut
