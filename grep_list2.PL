# 2020, 4/05, sun, pm 8:15
# GREP
# global search means element_filter_for_List 
# @ is array key word
# $_ is loop_variable used for iterate of the element in Array, 
# after GREP process, it prints out in Line-alike List.

# syntax:
# list_of_$_ = grep function($_), list

my @number_array = (1, 2, 4, 8, 16, 32, 64)

my @odd_digit = grep sum_up($_), @number_array

sub sum_up{

    my @digits = shift;
    my $sum;
    $sum += $_ for @digits;
    return $sum;

}
