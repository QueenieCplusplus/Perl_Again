# 2020, 4/05, sun, pm 4:50
# if not going to send data to output of any place, then using interactive or null

use IO::Interactive

print { interactive } 'flag name';
# this interactive is a callback of subroutine called itself, 
# return in {} since the datatype is unknown.

# using Null in alternative

use IO::Null;

my $null_fh = IO::Null->new;

some_printing_thing( $null_fh, @args);

# to specify the printout such as debug purpose, if not debug, then ignore.
 use IO::Null;

# if A? B means if A is True, then B executes
 my $debug_fh = $Debug ? *STDOUT : IO::Null -> new;
 
 $debug_fh -> print( "Bug occurs!" );
 # $debug_fh -> print( "Bug occurs!" ) if $Debug;