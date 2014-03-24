#!/usr/bin/perl

# halfLife3.pl - An example of OOP in perl
# By: Brian Neary
# Some elements were helpfully derrived from content at: http://stackoverflow.com/questions/6400318/hello-world-oop-example-in-perl

use strict;
use warnings;
use creature;
use weapon;

use Beep;

# # # use lib Audio::Beep::Win32::API;

my $beeper = Audio::Beep->new();

	# lilypond subset syntax accepted
	# relative notation is the default 
	# (now correctly implemented)
my $music = "g' f bes' c8 f d4 c8 f d4 bes c g f2";

# Base creature object
# - can (posess) reference a weapon object
# - can use weapon (if one is held) on another creature inherited object strike(creature)
# - Data members: name, healthPoints

# Inherit human object from creature, name = "Gordon Freeman", Health = 10
# Inherit headCrab object from creature, name = "HeadCrab", Health = 2

# Base weapon object
# - Data members: name, hitPoints

# Inherit crowBar from weapon
# Inherit crabClaw from weapon

### Main Method ###

## Initialize ##
# Creates Gordon Freeman, adds to aliveCreatures array, sleep(1)
# Creates 3 headCrab ojbects, adds to aliveCreatures array, sleep(1)
# Equips Gordon with crowBar, sleep(1)
# Equips headCrabs with crabClaws, sleep(1)

## Take turns fighting, each creature in turn ##
# operate a random() method (from library?) to choose the starting creature
# iterate over the aliveCreatures array:
#	- if creature == "Gordon Freeman", strike(aliveCreatures[i+1])
#	- else, strike("Gordon Freeman")
#	iterate over aliveCreatures:
# 		- if any member has healthPoints <= 0, remove them from the array
#		- if len(aliveCreatures) = 1, print "@aliveCreatures[0] wins!\n";, end.

printf("%c",7);

my $crowbar = weapon->new(name => "crowbar", power => 3);
my $crabClaw = weapon->new(name => "crab claw", power => 2);

my $gordonFreeman = creature->new(name => "Gordon Freeman", hitPoints => 10, side => "good", weapon => $crowbar);
my $headCrab1 = creature->new(name => "HeadCrab1", hitPoints => 2, side => "bad", weapon => $crabClaw);
my $headCrab2 = creature->new(name => "HeadCrab2", hitPoints => 2, side => "bad", weapon => $crabClaw);
my $headCrab3 = creature->new(name => "HeadCrab3", hitPoints => 2, side => "bad", weapon => $crabClaw);



my @livingCreatures = ($gordonFreeman, $headCrab1, $headCrab2, $headCrab3);

my $i = 0;
foreach(@livingCreatures)
{
  $_->info();
  if($livingCreatures[$i + 1])
  {
     print "Next creature: " . $livingCreatures[$i + 1]->name() . "\n\n\n";
  }
  else
  {
     print "Next creature: " . $livingCreatures[0]->name() . "\n\n\n";
     exit;
  }
  sleep(1);
  $i = $i + 1;
}

# Intro done - pause, then move on with the actual game.
sleep(5);

## TEST ##
#$gordonFreeman->info();
#$headCrab1->info();
#$headCrab2->info();
#$headCrab3->info();