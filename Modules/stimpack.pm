#!/usr/bin/perl
# The actual module to be imported by modules.pl
use warnings;
use strict;
package stimpack;
sub useStimpack
{
    print "Health before fixing: $_[0]\n";
    return $_[0] + 4;
    print "Stimpack used.  Health is now: $_[0]\n";}
1;

