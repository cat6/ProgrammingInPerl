#!/usr/bin/perl

use strict;
use warnings;

my $myVar = "War....war never changes.";

print "myVar: $myVar\n";					# Prints "myVar: hello", then goes to the next line.
print                 "myVar: $myVar\n"                      ;	# Demonstration that whitespace (outside of string literals) has no effect.  Prints same as the above line.
print 'myVar: $myVar\n';					# Prints "myVar: $myVar\n".  Does not interpolate the string.
print "\n\n";
my $grepResult = `grep "War" *`;	# Unix/Linux -> should run grep, Windows -> 'grep' is not recognized error.

