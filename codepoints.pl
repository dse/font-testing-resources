#!/usr/bin/env perl
use warnings;
use strict;
STDIN->binmode(":utf8");
STDOUT->binmode(":utf8");

my %counts;

while (<>) {
    s{\R\z}{};
    my @chars = split(//, $_);
    foreach my $char (@chars) {
        $counts{ord($char)} += 1;
    }
}

foreach my $codepoint (sort { $a <=> $b } keys %counts) {
    printf("%d\n", $codepoint);
}
