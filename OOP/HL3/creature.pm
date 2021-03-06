use strict;
use warnings;

package creature;

# The constructor
sub new 
{
   my $class = shift;
   my $self = bless {}, $class;
   my %args = @_;

   # Initialize data members
   $self->{_name} = $args{name};
   $self->{_side} = $args{side};
   $self->{_hitPoints} = $args{hitPoints};
   $self->{_weapon} = $args{weapon};
   # do something with arguments to new()
   return $self;
}

sub name 
{
   my $self = shift;
   return $self->{_name};
}

sub whichSide
{
   my $self = shift;
   return $self->{_side};
}

sub hitPoints 
{
   my $self = shift;
   return $self->{_hitPoints};
}

sub getName 
{
   my $self = shift;
   print $self->name(), "\n";   
}

sub weapon
{
   my $self = shift;
   return $self->{_weapon}->name();   
}

sub info 
{
   my $self = shift;
   print "CREATURE\n";
   print "Name: " . $self->name(), "\n";
   print "Side: " . $self->whichSide(), "\n";
   print "HitPoints left: " . $self->hitPoints(), "\n";
   print "Weapon: " . $self->weapon(), "\n\n";
}
1;