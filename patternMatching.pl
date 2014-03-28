#!/usr/bin/perl

use strict;
use warnings;

my $str = "the quick brown Fox jumped over the lazy dog";   ### 
if ($str =~ m/fox/) 
{
   print "1: Fox found\n";	
}

if($str =~ m/fox/i) 
{
   print "2: Fox found\n";	
}

$str =~ s/brown/red/; # $str is now: “the quick red Fox jumped over the lazy dog”
print "str is now: $str\n";

$str =~ tr/o/a/; # $str is now: “the quick red Fax jumped aver the lazy dag”
print "str is now: $str\n";	