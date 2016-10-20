#!/usr/bin/env perl6

sub MAIN (Str $file!){
	die "Not a file ($file)" unless $file.IO.f;
	my $data = slurp $file;

	for $file.IO.lines.elems -> $lines {
	for $file.IO.lines.words.elems -> $words {
	
	#for $file.IO.chomp.chars -> $chars {
	#for $file.IO.lines.elems + $file.IO.lines.chars -> $mix {
	#say "lines($lines) words($words) chars($chars)";
	
		say "lines ($lines) words ($words) chars ({$data.chars})";
		}
	}	
}
	


