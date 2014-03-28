#!/usr/bin/perl

use strict;
use warnings;

my %myHash = ();							 # Instantiate a hash.  
%myHash = ('Bridgestone', 1991, 'Rivendell', 2011, 'Norco', 1987);	 # Add 3 key-value pairs

print $myHash{'Bridgestone'} . "\n";						 # Outputs: 1991

foreach my $key ( keys %myHash )
{
  print "key: $key, value: $myHash{$key}\n";
}