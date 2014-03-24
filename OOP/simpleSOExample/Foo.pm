use strict;
use warnings;

package Foo;
sub new {
   my $class = shift;
   my $self = bless {}, $class;
   my %args = @_;
   $self->{_message} = $args{message};

   # do something with arguments to new()
   return $self;
}

sub message {
   my $self = shift;
   return $self->{_message};
}

sub hello {
   my $self = shift;
   print $self->message(), "\n";
}
1;