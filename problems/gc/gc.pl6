#!/usr/bin/env perl6

sub MAIN (Str $file!, Numeric :$threshold = 0.30) {
	die "Not a file ($file)" unless $file.IO.f;
	
	my $dna = $file.IO.f ?? $file.IO.slurp !! $file;
	my $sequencelength = 0;
	my $count = 0;
	my $species = 'dog';

	for $dna.lines -> $line {
		if $line ~~ /'>'/ {
			if $sequencelength > 0 {
				my Numeric $GCcontent = ($count / $sequencelength);
				if $GCcontent >= $threshold {
					$species = 'burkholderia';
				}else {
					$species = 'anthrax';
					}
					printf "%.02f: %s\n", $GCcontent, $species ; 
			}
		$sequencelength = 0;
		$count = 0;
	}else {
		$sequencelength = lines.chars;
		for $line.lc.comb {
			when 'g' { $count++ }
			when 'c' { $count++ }
			}
		}
	}
	my Numeric $GClast = ($count / $sequencelength);
	if $GClast >= $threshold {
	$species = 'burkholderia';
}else {
	$species = 'anthrax';
}
	printf "%.02f: %s\n", $GClast, $species;
}
