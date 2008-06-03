#!/usr/bin/perl -w
use strict;
use warnings;

open(OUT, ">combine.html") or die "$!\n";

print OUT '<style type="text/css">';
print OUT 'body {font: 72% arial, helvetica, sans-serif; text-align: center;}';
print OUT '.hardleft  {text-align: left; float: left;  margin: 15px 0  0 25px;}';
print OUT '.hardright {text-align: right; float: right; margin: 15px 25px 0 0;}';
print OUT 'table, caption {text-align: left; margin: auto; font-size: 1em; border-collapse: collapse; border: 1px #fff solid;}';
print OUT 'td, th, caption {padding: 4px; border: 2px #fff solid; vertical-align: top;}';
print OUT 'caption {padding-left: 5px; text-align: center; border: 0; font-weight: bold;}';
print OUT 'h1 {font-size: 1.6em;}';
print OUT 'h2 {font-size: 1.4em;}';
print OUT 'h3 {font-size: 1.2em;}';
print OUT 'p {text-align: center;}';
print OUT 'th, {background-color: #aaf;}';
print OUT '.contents {text-align: left; margin-left: 20%;}';
print OUT '.race, .rank {text-align: center;}';
print OUT '.even, {background-color: #bbf;}';
print OUT '.odd {background-color: #ddf;}';
print OUT '</style>';

my @files = ('cadetos.html', 'larkos.html', 'laseros.html', 'okos.html', 'squibos.html', 'wayfareros.html', 'fast-handicapos.html', 'slow-handicapos.html');
foreach (@files) {
    processFile($_);
}

sub processFile {
    my $file = shift;
    open(FILE, "<$file") or return;
    my $startFound = 0;
    my $endFound = 0;
    while(<FILE>) {
	if(/<h1/) {
	    $startFound = 1;
	}
	if(/Scoring codes used/ || /<p/) {
	    $endFound = 1;
	}
	if ($startFound && !$endFound) {
	    print OUT;
	}
    }
}
