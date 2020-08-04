#!/usr/bin/perl
#put every sequence in a separate file for a dataset of proteins 
open (my $data , "<Protein_dataset.txt")or die "Error";   # read a file or display erroe
@sequence1=<$data>;
@sequence2;
$c=0;
$d=0;
$seqence="";
foreach $line(@sequence1){
$sequence2[$c] = $line;
$c++;}
for($d=0;$d<=@sequence2;$d++){
foreach(split //,$sequence2[$d]) {
if ($_ eq '>' && $d==0 )
{$seqence.=$_; }
if ($_ ne '>' )
{ $seqence.=$_;}
if ($_ eq '>' && $d!=0 )
{ print "frist file emplmeted:\n \n",$seqence ;
$file= "file$d.text";
open( FH,">>$file")or die "Error";
print FH $seqence;
close(FH);
$seqence="";
$seqence.=$_;
 }
} }
close($data);
exit;
