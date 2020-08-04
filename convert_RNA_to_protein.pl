#!/usr/bin/perl
#convert RNA to protein using Codon Table)
$rna="CGUCCCCUGUAACCGGAAACCGCCGAUAUGCCGGGGCCGAAGCCCGAGGGGCGGUUCCCGAAGCCGCCUCCGGAAGCCAGGGCCGAACGAUGAGUCCUCGUCCCGCGGGGUGCCCGGUGGGGGAGGCACGGCUGAAGGGCCGUGCUAACCCCCUUUAGGCCCCAAACCCCGCAAGGCCCGGAAGGGAGCAGCGGUAGGGGCCACGGAGCACGCUCGCGGGGGUGCGGGGAUGAGGUAGGCCCUGGUGAAAGGAGGCGGUGGAGGGUUCCCACCCUCGGGCGUGCCCGCCGCCGCUAG";
(@rna1)=split (//,$rna);
$e=0;
$protein="";
$rna2="";
foreach $s(@rna1){
$rna2 .=$s;
$e++;
#print $e;
if($e%3==0){
if($rna2 eq "UUU"||$rna2 eq "UUC"){
$protein .="Phe";
}
if($rna2 eq "UAU"||$rna2 eq "UAC"){
$protein .="Tyr";
}
if($rna2 eq "UGG"){
$protein .="Trp";}
if($rna2 eq "AUG"){
$protein .="Met";}
if($rna2 eq "UAA"||$rna2 eq "UAG"||$rna2 eq "UGA"){
$protein .="STOP";}
if($rna2 eq "AUU"||$rna2 eq "ACU"||$rna2 eq "AUA"){
$protein .="Ile";}
if($rna2 eq "UUA"||$rna2 eq "UUG"||$rna2 eq "CUU"||$rna2 eq "CUC"||$rna2 eq "CUA"||$rna2 eq "CUG"){
$protein .="Leu";}
if($rna2 eq "UCU"||$rna2 eq "UCC"||$rna2 eq "UCA"||$rna2 eq "UCA"||$rna2 eq "UCG"||$rna2 eq "AGU"||$rna2 eq "AGC"){
$protein .="Ser";}
if($rna2 eq "CCU"||$rna2 eq "CCC"||$rna2 eq "GUA"||$rna2 eq "GUG"){
$protein .="Pro";}
if($rna2 eq "GCU"||$rna2 eq "GCC"||$rna2 eq "GCA"||$rna2 eq "GCG"){
$protein .="Ala";}
if($rna2 eq "GUU"||$rna2 eq "GUC"||$rna2 eq "GCA"||$rna2 eq "GCG"){
$protein .="Val";}
if($rna2 eq "GGU"||$rna2 eq "GGC"||$rna2 eq "GGA"||$rna2 eq "GGG"){
$protein .="Gly";}
if($rna2 eq "ACU"||$rna2 eq "ACC"||$rna2 eq "ACA"||$rna2 eq "ACG"){
$protein .="Thr";}
if($rna2 eq "AAU"||$rna2 eq "AAC"){
$protein .="Asn";}
if($rna2 eq "GAU"||$rna2 eq "GAC"){
$protein .="Asp";}
if($rna2 eq "GAA"||$rna2 eq "GAG"){
$protein .="Gly";}
if($rna2 eq "AAA"||$rna2 eq "AAG"){
$protein .="Lys";}
if($rna2 eq "CAU"||$rna2 eq "CAC" ){
$protein .="His";}

if($rna2 eq "CAA"||$rna2 eq "CAG"){
$protein .="Gln";}

if($rna2 eq "CGU"||$rna2 eq "CGC"||$rna2 eq "CGA"||$rna2 eq "CGG"||$rna2 eq "AGA"||$rna2 eq "AGG"){
$protein .="Arg";}

$seq="";
}

}
print "\n the protein is :\n",$protein,"\n";
exit;
