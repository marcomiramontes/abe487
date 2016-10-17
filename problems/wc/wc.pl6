#!/usr/bin/env perl6

sub MAIN (Str $file!){
	for $file.IO.lines.elems -> $lines {
	for $file.IO.lines.words.elems -> $words {
	for $file.IO.lines.chars -> $chars {
		say "lines($lines) words($words) chars($chars)";
			}
		}
	}
}

