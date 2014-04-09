#!/usr/bin/perl
# The script that will import a module
use strict;
use warnings;require stimpack;
my $health = 10;

print "Health is currently: $health\n";
$health -= 5;
print "BANG! Health is now...$health\n";
$health = stimpack::useStimpack($health);
print "Health after stimpack: $health\n";