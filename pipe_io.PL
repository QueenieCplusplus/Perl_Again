# 2020, 4/05, sun, pm 5:10-5:40
# Pipe is the output in prompt from exterior cmd.
# which is different from file in local and streaming in sockets.
# - is a cmd symbol
# | means pipe, the data from the return result of cmd , writting into the program thru pipe
# < > means file handler, also meaning "STDIN" (standard Input),input from prompt 

# to read the return result from cmd into pipe in promt

open my $pipe, '-|', $command || die "the file handler can not be opened."

while( <$pipe> ) {
    print " the $_ is read out now."
}

# via module

use IO::Pipe;
my $pipe = IO::Pipe -> new;ß

$pipe -> reader( " $^X -V " ); # $^X means executable program

while( <$pipe> ) {
    print " the $_ is read out now."
}

# vise versa, to write  the pipe to cmd in prompt

open my $pipe, "| $command" || die "the filehandler can not be opened due to $!";

foreach(1..10) {
    print $pipe "count flag $_\n";
}

# module way

use IO::Pipe;

my $pipe = IO::Pipe -> new;

foreach( 1..10 ) {
    print $pipe "count flage $_\n";
}

