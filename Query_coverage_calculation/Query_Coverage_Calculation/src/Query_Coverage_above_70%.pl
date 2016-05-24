# to find query coverage in BLAST

$/=undef;
$aa=@ARGV[0];
open(dd,"$aa");

$asa=<dd>;


@x = split (/\n/,$asa);
#print "size of array @x[2] ";

for ($0 = 1;$i <=$#x;$i++){
($n1,$n2,$n3,$n4,$n5,$n6,$n7,$n8,$n9) = split(/\t/,$x[$i]); # n1, n2, n3 etc are the column number in comandline BLAST output

$f1=$n7-$n6; # in BLAST( n7 is Subject end, and n6 is the subject start )

$f2= $f1/$n9;#(n9 is the subject length)

$f3= $f2*100; 
$f3=~ s/\-//;
if ($f3>=70)
{
$out=@ARGV[1];

open(ff12,">>$out");#appending 


print ff12 "$n1\t$n2\t$n3\t$n4\t$n5\t$n6\t$n7\t$n8\t$n9\t$f3\n";
}
}
