#!/usr/bin/perl

use strict;
use warnings;

use Time::HiRes qw (sleep);	# Replaces sleep with a high-precision alternative

open(MYFILE, "<nightOfTheLivingDead.txt") or die "Couldn’t open nightOfTheLivingDead.txt";

while(<MYFILE>){
   print "$_";
   sleep(0.2);
}
