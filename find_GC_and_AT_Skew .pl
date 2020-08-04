#!/usr/bin/perl
# read a file or display erroe
open (my $data , "<file_name.fs")or die "Error";
@series=<$data>;
$numOfA=0;
$numOfT=0;
$numOfG=0;
$numOfC=0;
$c=0;
@series2;
shift(@series); # to skip the frist line which is the identifer of the file

foreach $line(@series){
$series2[$c] = $line;
$c++;}

# counting number of A , T , C, G in the file
for($d=0;$d<=@series2;$d++){
foreach(split //,$series2[$d]) {

if ($_ eq 'A')
{$numOfA++;}
if ($_ eq 'T')
{++$numOfT;}
if($_ eq 'C')
{$numOfC++;}
if($_ eq 'G')
{$numOfG++;}

} }

# printing number of A , T , C, G in the file
print "The number Of A in the file is :",$numOfA ,"\n";
print "The number Of T in the file is :",$numOfT,"\n";
print "The number Of C in the file is :",$numOfC,"\n";
print "The number Of G in the file is :",$numOfG,"\n";

# calculating GC Skew and AT Skew
if($numOfG+$numOfC!=0){
$GCSkew=($numOfG-$numOfC)/($numOfG+$numOfC);  }
else{
$GCSkew=0;}
 if ($numOfA+$numOfT!=0) {
$ATSkew=($numOfA-$numOfT)/($numOfA+$numOfT); }
else  {
 $ATSkew=0; }
 
close($data); # close the file

# printing GC Skew and AT Skew
print "The GC Skew is :\t ",$GCSkew,"\n";
print "The AT Skew is :\t ",$ATSkew,"\n";
exit;
