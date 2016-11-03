#!/usr/bin/env perl6

sub MAIN (Str $s1='GAGCCTACTAACGGGAT', Str $s2='CATCGTAATGACGGCCT') {
my ($AG, $AC, $AT, $GA, $GC, $GT, $CA, $CG, $CT, $TA, $TG, $TC) = 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0;
for zip $s1.comb, $s2.comb -> $both { 
for $both.join {
	when 'AG' { $AG++ }
	when 'AC' { $AC++ }
	when 'AT' { $AT++ }
	when 'GA' { $GA++ }
	when 'GC' { $GC++ }
	when 'GT' { $GT++ }
	when 'CA' { $CA++ }
	when 'CG' { $CG++ }
	when 'CT' { $CT++ }
	when 'TA' { $TA++ }
	when 'TG' { $TG++ }
	when 'TC' { $TC++ }
	}
}
#	put ($AG, $AC, $AT, $GA, $GC, $GT, $CA, $CG, $CT, $TA, $TG, $TC).join(' ');	
	say $AG [+] $AC [+] $AT [+] $GA [+] $GC [+] $GT [+] $CA [+] $CG [+] $CT [+] $TA [+] $TG [+] $TC 
}
