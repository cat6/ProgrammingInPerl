#!/usr/bin/perl

# hashExample.pl - An example of using hashes in Perl
# By: Brian Neary

%myHash = ();							 		# Instantiate a hash.  
%myHash = ('Bridgestone' => 1991, 'Rivendell' => 2011, 'Norco' => 1987);	# Add 3 key-value pairs
$myHash{'Bridgestone'};						 	# Outputs: 1991

print "Size of hash:  " . keys( %hash ) . ".\n";

############ CHECK ################
foreach (%myHash)
{
	#print $_ . " : " . $myHash{$_} . "\n";
	print $myHash{$_} . "\n";
	#print $myHash{$_} . "\n";
}