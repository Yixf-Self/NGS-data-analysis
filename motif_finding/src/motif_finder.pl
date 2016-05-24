print "Enter path of protein sequence file...\n";
chomp($fp=<STDIN>);

unless(open(FH,$fp))              # check for file input success.  
 { print "File Error!\n";
#   exit;
 }

@seq=<FH>;
close FH;

chomp(@seq);
foreach $i(@seq)                  # test sequence validity.
 { if($i eq 'b'|$i eq 'j'|$i eq 'o'|$i eq 'u'|$i eq 'x')
    { print "Sequence Error! Invalid amino acid '$i' found.\n";
      exit;
    }
 }
print "File read and sequence check complete.\n";
print "Sequence is:- @seq\n";
$str=join('',@seq);
print "Enter the number of motif patterns you wish to search:- ";

chomp($n=<STDIN>);

for($i=1;$i<=$n;$i++)
 { print "Enter the $i motif sequence - ";
   chomp($mot=<STDIN>);
   if($str=~ m/$mot/g)
    { print "--> Motif pattern found.\n";}
   else
    { print "--> Motif pattern not found.\n";}
 }


