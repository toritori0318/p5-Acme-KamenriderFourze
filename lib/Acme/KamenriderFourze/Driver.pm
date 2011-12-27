package Acme::KamenriderFourze::Driver;

use strict;
use warnings;
use base qw(Class::Accessor);
use Term::ANSIColor qw(colored);

use Class::Load qw/load_class/;
use Acme::KamenriderFourze::LimitBreak;

# pos
#  1 maru
#  2 batsu
#  3 sankaku
#  4 shikaku

my @pos = qw/
    maru
    batsu
    sankaku
    shikaku
/;

__PACKAGE__->mk_accessors((@pos, qw/states/));

sub slot_array {
    my ($self) = @_;
    return [map { $self->{$_} if $self->{$_}; } @pos];
}

sub bulk_set {
    my ($self, @switches) = @_;
    for my $p (@pos) {
        next if scalar @switches == 0;
        $self->{$p} = shift @switches;
    }
    $self->set_states;
}

sub set_states {
    my ($self) = @_;
    for my $p (@pos) {
        if($self->{$p} && $self->{$p}->states) {
            my $class = $self->{$p}->states;
            my $module_name = "Acme::KamenriderFourze::States::${class}";
            load_class($module_name);
            $self->states($module_name->new);
            last;
        }
    }
}

sub switch_on {
    my ($self, %parameter) = @_;
    my $switch;
    if(exists $parameter{'pos'}) {
        if($parameter{'pos'} =~ /\d+/) {
            $switch = $self->{$pos[$parameter{'pos'}]};
        }else{
            $switch = $self->{$parameter{'pos'}};
        }
    }
    elsif(exists $parameter{'switch_no'}) {
        $switch = $self->{$pos[$parameter{'switch_no'}]};
    }
    elsif(exists $parameter{'switch_name'}) {
        for my $p (@pos) {
            if($self->{$p} && $self->{$p}->name eq $parameter{'switch_name'}) {
                $switch = $self->{$p};
                last;
            }
        }
    }
    if($switch) {
        $switch->status('on');
        printf "%s オン\n", ($switch->bgm) ? $switch->bgm : $switch->name;
    }
}

sub limitbreak {
    my ($self) = @_;
    my @on_switch = grep { $_->status eq 'on' } @{$self->slot_array};
    my $limitbreak = $self->get_limitbreak(\@on_switch);
    if($limitbreak) {
        printf "\n【リミットブレイク】 %s\n", $limitbreak->name;
        print $limitbreak->bgm, "\n";
    }else{
        print "\nリミットブレイクに失敗したぞ！ \n";
    }
}

sub get_limitbreak {
    my ($self, $switches ) = @_;
    my $limitbreak_class = Acme::KamenriderFourze::LimitBreak->new->list;
    for my $limitbreak (@$limitbreak_class) {
        my $hit_count = 0;
        for my $slot_switch (@$switches) {
            for my $switch (@{$limitbreak->switch}) {
                $hit_count++ if $slot_switch->no eq $switch->no;
            }
        }
        return $limitbreak if $hit_count == scalar @{$limitbreak->switch};
    }
}

1;
