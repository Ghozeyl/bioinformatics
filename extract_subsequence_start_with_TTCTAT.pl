#!/usr/bin/perl
#extract any subsequence start with “TTCTAT” and position of the first letter in the DNA sequence
$sequence="ACAAAACTCGCCTAAACATGCACTTTGTTTCTAACGTAGACGGCACTCACATCGTTGAGACACTAAAGCCTCTTAACCCAGAAAACACTGTTCCTAGTAGCATCTAAGACATTTACCACTCAAGAAACAATGACGAACGCACACTCTGCGCGTGATTGGTTCTTGGCTGAAGCAGGCGACTCAGCACACGTTGCTGCACTTCGCTGCACTATCAACAAACGCGGCTTCAGTTGCTGAGTTTGGTTTGATACTGACAACATGTTCGAATTCTGGGATTGGGTAGGCGGTCGTTACTCACTATGGTCAGCGATCGGTCTTTCTATCTCACTATCTATCGGCTTCGATAACTTCGCTGAGTTACTCGATGGCGCACACGAGATGGATAACCACTTTGCTTCAACG";
$postion = index($sequence,"TTCTAT");
print " position of the first letter of subsequence start TTCTAT in the DNA sequence","$postion\n";
exit;
