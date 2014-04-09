#!/usr/bin/perl

use strict;
use warnings;

my @myArray;				# Instantiate an array
@myArray = ("foo", "bar", "blah");	# Instantiate the array and add 3 variables to it.
push(@myArray, "something");		# pushes a new value onto the end of the array
print @myArray . "\n\n\n";				# outputs: 4 


# If you want to print the contents of an array you have to loop over it.
foreach (@myArray)				# Iterate over the array and print each element.
{
	print $_ . "\t";		# Who can tell me what $_ is?  What "\t" is?
}

my $var = "something else";		# Lets push a variable onto the array
push (@myArray, $var); 			# adds “something else” to @myArray

print "\n\n";

foreach(@myArray)
{
   print $_ . "\t";			# foo	bar	blah	something	something else
}
