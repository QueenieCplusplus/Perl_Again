# 4/06, pm 12:30, by Vivy Chen (Queenie)
# del ele in List using map

@input = (1, 3, 5, 7, 9, 11);

my @result = map {$_, $_ *2 } @input;

my @list = map {

    my @new_list = split //, $_;

    if ($new_list[-1]==0){

        @new_list;

    } else {

        (); # return an empty list per loop 

    }

} @result;
