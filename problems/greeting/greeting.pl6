#!/usr/bin/env perl6

sub MAIN (Str:D $name!, $charac = $name.chars) {
	
	put "Hello, $name, your name has $charac characters."	
}



#sub MAIN ($name!) {
#	say "Hello, $name, your name has {$name.chars} characters.";

#multi MAIN {
#	say "This gets run."

