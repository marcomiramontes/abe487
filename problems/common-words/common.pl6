#!/usr/bin/env perl6

sub MAIN (Str $txtfile1, Str $txtfile2){
	my %hash1;
 	for $txtfile1.IO.slurp -> $linesfile1 {
		for $linesfile1.lc.subst(/<-[\w\s]>/, '', :g).words -> $wordfile1 {
			%hash1{ $wordfile1 }++;
			}
		}
	my %hash2;
        for $txtfile2.IO.slurp -> $linesfile2 {
                for $linesfile2.lc.subst(/<-[\w\s]>/, '', :g).words -> $wordfile2 {
                        %hash2{ $wordfile2 }++;
			}
		}
	my $bothhash = %hash1 (&) %hash2;
		my $totcount = $bothhash.keys.elems;
			put $totcount;
}
	
