use strict;
use warnings;

package weapon;

# The constructor
sub new 
{
   my $class = shift;
   my $self = bless {}, $class;
   my %args = @_;

   # Initialize data members
   $self->{_name} = $args{name};
   $self->{_power} = $args{power};

   # do something with arguments to new()
   return $self;
}

sub name 
{
   my $self = shift;
   return $self->{_name};
}

# Send a message
sub getPower 
{
   my $self = shift;
   return $self->{_power};
}

sub getName 
{
   my $self = shift;
   print $self->name(), "\n";   
}

sub info 
{
   my $self = shift;
   print "WEAPON\n";
   print "Name: " . $self->name(), "\n";
   print "Power: " . $self->getPower(), "\n\n";
}
1;