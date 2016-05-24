#!/usr/bin/perl -w
print"Enter the path of dile containing a mrna sequence: ";
chomp($fname=<STDIN>);
unless(open(FH,$fname))
{
	print"\nCannot open the sequence file...";
	exit;
}
@mrna=<FH>;
close FH;
$mrna=join('',@mrna);
@mrna=split('',$mrna);
print $mrna[5];
@mrna1=();
$protein='';
%myhash=					   
(
uca=>'s',ucc=>'s',ucg=>'s',ucu=>'s',uuc=>'f',uuu=>'f',uua=>'l',uug=>'l',uac=>'y',uau=>'y',uaa=>'-',uag=>'-',uga=>'-',ugc=>'c',ugu=>'c',ugg=>'w',cua=>'l',
cuc=>'l',cug=>'l',cuu=>'l',cca=>'p',ccc=>'p',ccg=>'p',ccu=>'p',cac=>'h',cau=>'h',caa=>'q',cag=>'q',cga=>'r',cgc=>'r',cgg=>'r',cgu=>'r',aua=>'i',auc=>'i',
auu=>'i',aug=>'m',aca=>'t',acc=>'t',acg=>'t',acu=>'t',aac=>'n',aau=>'n',aaa=>'k',aag=>'k',agc=>'s',agu=>'s',aga=>'r',agg=>'r',gua=>'v',guc=>'v',gug=>'v',
guu=>'v',gca=>'a',gcc=>'a',gcg=>'a',gcu=>'a',gac=>'d',gau=>'d',gaa=>'e',gag=>'e',gga=>'g',ggc=>'g',ggg=>'g',ggu=>'g'
);
$l=scalar(@mrna);
for($i=0;$i<$l;$i=$i+3)
{$a='';
	for($j=0;$j<3;$j++)
	{
 
		$a.= $mrna1[$i];
#		$mrna1[$i].=$mrna[$i];
#                $mrna1[$i].=" ";  
	}
               push(@mrna1,$a);
}
print @mrna1;
print $myhash{$mrna1[3]};
#foreach $i(@mrna1)
#{
	 
#	 $protein.=$myhash{$mrna[$i]};	 
#        print $mrna1[$i];
#	 print $myhash{$mrna1[$i]};
#}
print"\n The protein is:\n $protein";
exit;
