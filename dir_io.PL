# 2020, 4/05, sun, pm 4:25
# Diretory 目錄代號

# subroutine called opendir 
# subroutine called die " "
# subroutine called readdir()
# print " "

opendir my $dh, '.' or die "Could not open the directory: $!";

foreach my $file( readdir( $dh )) {
    print "I opened the dir and read it out, says $file !\n";
}