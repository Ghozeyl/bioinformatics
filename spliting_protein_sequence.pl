#!/usr/bin/perl
#put every four amino acids in one line for protein sequence
$sequence='GSWINNDQIYNTIVTSHAFLMIFFMVMPFLIGGFGNWLIPLMLGSPDMAFPRMNNISFWLLPPSLFMLLLSNMYYPSPGTGWTVYPPLSEYMYHSSPSVDFAIFSLHMSGISSIMGSLNLMVTIMMMKNFSLNYDQISLFPWSVFITAILLIMSLPVLAGAITMLLFDRNFNTSFFDPMGGGDPILYQHLFWFFG';
$numOfA=0;
$numOfT=0;
$numOfG=0;
$n=1;

(@sequence1)=split (//,$sequence);
print  "The protein  after split is : \n";
foreach $i (@sequence1){
print $i;
if($n%4==0){
print "\n";}
$n++;}
print "\n";
exit;
