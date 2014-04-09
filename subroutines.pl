#!/usr/bin/perl

use strict;
use warnings;

sub doesUselessNothing 
{
   my $sub = "doesUselessNothing";              # It's a best practice to include a variable storing your sub's name
   print "This is subroutine $sub reporting in.\n";
   
   my ($argument) = @_;                         # A common way to get simple arguments in Perl.  There are numerous other ways (and problems).
   print "Argument: $argument\n";
}

sub evenHarderUselessNothing
{
   my $sub = "evenHarderUselessNothing";   
   
   my $arr = @_;
   my $refArr = @_[0];
   print "\n\n";
   print "Print argument traditionally: $arr\n";
   print "Referenced Array: @$refArr\n"
}

my @firstArr = qw(1 2 3);                       # Construct an array with "qw" syntax
my @secondArr = (@firstArr, 4, 5, 6);           # Construct a nested array using traditional syntax
my $quote = "Everybody makes it until they don't.";

print "Second Array: @secondArr\n";             # Second Array: 1 2 3 4 5 6

doesUselessNothing($quote);
evenHarderUselessNothing( \@secondArr );
