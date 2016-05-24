#!usr/bin/perl
use warnings;
open(OT1, ">output1.txt");
open(OT2, ">output2.txt");
%hash1=();
%hash2=();
#open(OUT,">output.txt");
open(GID,"query1.txt");
open(DS1,"dataset_1.txt");
open(DS2,"dataset_2.txt");
@ids = <GID>;
while(my $line= <DS1>)
{
( $no1,$gid1) =split(' ',$line);
($gid1 =~ s/.txt\s*//g);
$hash1{$gid1}=$no1;
}

while(my $line= <DS2>)
{
($no2, $gid2) =split(' ',$line);
($gid2 =~ s/.txt\s*//g);
$hash2{$gid2}=$no2;
}
#print OUT "ID\tDataset 1\tDataset2\n";
#print "ID\tDataset 1\tDataset2\n";

foreach $id(@ids)
{
$freq1=0;
$freq2=0;
chomp($id);
($id =~ s/^>//g);


if(exists $hash1{$id})
{
$freq1 = $hash1{$id};
}
if(exists $hash2{$id})
{
$freq2 = $hash2{$id};
}
if($freq1>=10 && $freq2>=10)
{
print OT1 "$id\t$freq1\t$freq2\n";
}else{
print OT2 "$id\t$freq1\t$freq2\n";
}
#print "$id\t$freq1\t$freq2\n";
}
close(GID);
close(DS1);
close(DS2);
exit;

			
