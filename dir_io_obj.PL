# 2020, 4/05, sun, pm 4:30
# Diretory Ref 目錄代號參照
# IO::Dir is built-in Lib above v5.6
# -> calling arrows 調用箭頭

use IO::Dir; #IO::Dir

my $dir_fh = IO::Dir -> new（ '.' ）|| die "sorry, the dirhandle can be opened."

# Iterator elements in List seperately and in sequence.
while ( defined( my $file = $dir_fh -> read ) ) {
    print "Master! I found out the $file \n";
}