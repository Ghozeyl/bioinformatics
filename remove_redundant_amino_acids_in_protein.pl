#!/usr/bin/perl
#remove the redundant amino acids in the protein sequence
$protein ="PIATPEVYAEMLGQAKQNSYAFPAINCTSSETVNAAIKGFADAGSDGIIQFSTGGAEFGSGLGVKDMVTGAVALAEFTHVIAAKYPVNVALHTDHCPKDKLDSYVRPLLAISAQRVSKGGNPLFQSHMWDGSAVPIDENLAIAQELLKAAAAAKIILEIEIGVVGGKLYTSPEDFEKTIEALGAGEHGKYLLAATFGNVHGVYKPGNVKLRPDILAQGQQVAAAKLGLPADAKPFDFVFHGGSGSLKEIEEALRYGVVKMNVDTDTQYAFTRPIAGHMFTNYDGVLKVDGEVGVKKVYDPRSYLKKAEASMSQRVVQACNDLHCAGKSLTHH";
(@proteins)=split (//,$protein);
@new;
$a=0;
foreach $s (@proteins){
 @proteins = grep(!/$s/, @proteins);
 $newProteins[$a]=$s;
 $a++;
}
print "\n*********\n@newProteins\n********************\n";
exit;