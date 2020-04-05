# 2020, 4/05, sun, pm 8:00
# GREP
# global search means element_filter_for_List 
# @ is array key word
# $_ is loop_variable used for iterate of the element in Array, 
# after GREP process, it prints out in Line-alike List.

# syntax:
# list_of_$_ = grep expression, list

my @input_salary = (24000, 28000, 35000, 36000, 40000, 42000, 44000, 47000);
my @bigger_than_40k = grep $_ > 40000, @input_salary;

my @end_in_5k = grep /5000$/, @input_salary

