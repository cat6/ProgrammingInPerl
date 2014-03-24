#!/usr/bin/perl

# This file and Foo.pm are from: http://stackoverflow.com/questions/6400318/hello-world-oop-example-in-perl

use Foo;
use strict;
use warnings;

# Create a new person object and set the message variable to "hello world"
my $foo = Foo->new(hitPoints => "Hello world");
$foo->hello();