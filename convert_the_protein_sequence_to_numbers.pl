#!/usr/bin/perl
#convert the protein sequence to numbers.(If A set to 1, C set to 2 and the remaining amino acids set to 0).
$seql2="PIATPEVYAEMLGQAKQNSYAFPAINCTSSETVNAAIKGFADAGSDGIIQFSTGGAEFGSGLGVKDMVTGAVALAEFTHVIAAKYPVNVALHTDHCPKDKLDSYVRPLLAISAQRVSKGGNPLFQSHMWDGSAVPIDENLAIAQELLKAAAAAKIILEIEIGVVGGKLYTSPEDFEKTIEALGAGEHGKYLLAATFGNVHGVYKPGNVKLRPDILAQGQQVAAAKLGLPADAKPFDFVFHGGSGSLKSEIEEALRYGVVKMNVDTDTQYAFTRPIAGHMFTNYDGVLKVDGEVGVKKVYDPRSYLKKAEASMSQRVVQACNDLHCAGKSLTHHH";
foreach(split //,$seql2) {
if($_ eq 'A')
{$seq12.=1;}
if($_ eq 'C')
{$seq12.=2;}
if($_ ne 'A'&&$_ ne 'C')
{$seq12.=0;}
 }
 print "The protein  is :",$seq12 ,"\n";

exit;
