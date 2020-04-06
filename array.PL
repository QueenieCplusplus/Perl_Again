# 4/06, pm 2:10, by Vivy Chen (Queenie)
# array
# to access the element in an array
# Syntax:

# @anArray
# from array to scalar
# $anArray[i] is a scalar type element atrieving (取回) from an defined array

# as same as alternative as below:
# from scalar to array to scalar
# ${ $key_item }[i]

# qw means quote words
# array

sub check_func {

    #scalar
    my $eles = shift;

    # loop key and defined mapping value as 1 in int
    # ${ ele }[i] is as same as $meal_options[i] 
    # @{ $item } is from scalar to array
    my %mapping_hash = map{ $_, 1 } @{ $eles };

    my @required_attributes = qw(tofu veg salt);
    for my $ele (@required_attributes) {
        
        unless( $mapping_hash{$ele}){

            print("today we missing something seems to be $ele.\n");

        }
    }
}

my @meal_today = qw( red_tea black_coffee water soy_juice tofu rice veg ice);
check_func(\@meal_today);

# [Running] perl "/Users/pintred/Desktop/array.PL"
# today we missing something seems to be salt.
# [Done] exited with code=0 in 0.035 seconds

