# 2020.4/04, pm 7:40
# overwrite method
# 1stly, inherited from super class, so called parent class
# parent class plz see Dragon in invoke.pl file

# in bash, execute cmd as below
$ module-starter --module==cat --dist=.

# define this class::method in pm file
package cat;
use parent qw(BeingInEarth);

# define method (or called subroutine) using sub keyword in prefix
sub sound {'miao'}

# inherited the method from parent or called super class then override it
sub speak {

    # variable called class hereby is like a "self" class.
    # and output of it will be a class name
    my  $class = shift;
    #print "a $class is going to speak out loud, saying wow wow wow !\n ";
    print "a $class is going to speak out loud, saying", $class -> sound,"!\n ";

}

# output
# > a cat is going to speak out loud, saying miao!"

# Alternative way
sub speak {

    my $class = shift;
    $class -> SUPER::speak;
}
