# 2020, 4/04, pm 5:45
# invoke methed (param)
# method = subroutine of class

# Syntax:
# Class->method(@args)
# or
# Class::method('Class', @args);

# plz see code file naming 'invoke.PL'

use Dragon
use iBot
use tPrincess

# sub is the defined way to call out the subroutine
# alike def in python
# to overwrite statement in methods body

sub speak {

    my $class = shift;
    print " a $class is going to speak out loud, saying wow wow wow !\n ";

}

# the above mentioned variable called $class will access the value attribute of the method.
# this means "passing the value thru subroutine"