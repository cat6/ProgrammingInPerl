#!/usr/bin/perl

# helloWorldConvoluted.pl - a convoluted hello world program designed to illustrate various Perl syntaxes
# By: Brian Neary 

my $firstWord = "hello";
my $secondWord = "world";

my %hello1 = ('first' => $firstWord, 'second' => $secondWord);

my @hello2;

foreach(keys %hello1)
{
	#print "inside: $_\n";
	if($_ eq "first")
	{
		@hello2[0] = $hello1{$_};
	}
	elsif($_ eq "second")
	{
		@hello2[1] = $hello1{$_};
	}
	else
	{
		# Should not get here
		die 'Error: didn\'t get expected value when parsing hello1\n'
	}
}

foreach(@hello2)
{
	print $_ . " ";
}
print "\n";
