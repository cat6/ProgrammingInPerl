#!/usr/bin/perl

# halfLife3.pl - An example of OOP in perl
# By: Brian Neary

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
# Creates Gordon Freeman, adds to aliceCreatures array, sleep(1)
# Creates 3 headCrab ojbects, adds to aliceCreatures array, sleep(1)
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



