#!usr/bin/perl -w
%database=("EcoR1" => "GAATTC",
	"EcoR2" => "CCAGG",
	"BamHI" => "GGATCC");
@enz=keys %database;
print"\nEnter the sequence to be searched: ";
chomp($seq=<STDIN>);
$seq=uc ($seq);
foreach $_ (@enz)
{
	print"\n $_ \t";
}

print"\nEnter the restriction enzyme whose restriction site is to be searched: ";
chomp($opt=<STDIN>);
if($opt eq "EcoR1")
{
	if($seq=~/^(.*)GAATTC.*$/g)
	{
		$b=$1;
		$len=length($b);
		$len++;
		print"\n Restriction Site found at: $len";
	}
	else
	{print"\n Restriction Site not found ";}
}

elsif($opt eq "EcoR2")
{
	if($seq=~/^(.*)CCWGG.*$/g)
	{
		$b=$1;
		$len=length($b);
		$len++;
		print"\n Restriction Site found at: $len";
	}
	else
	{print"\n Restriction Site not found ";}
}

elsif($opt eq "BamHI")
{
	if($seq=~/^(.*)GGATCC.*$/g)
	{
		$b=$1;
		$len=length($b);
		$len++;
		print"\n Restriction Site found at: $len";
	}
	else
	{print"\n Restriction Site not found ";}
}

else
{print"\n Invalid choice....\n";}
exit;
