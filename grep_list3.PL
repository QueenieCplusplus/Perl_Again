# 2020, 4/05, sun, pm 8:30
# GREP block is a closure 匿名副常式
# global search means element_filter_for_List 
# @ is array key word
# $_ is loop_variable used for iterate of the element in Array, 
# after GREP process, it prints out in Line-alike List.

# syntax:
# list_of_$_ = grep { statement} @list;

@inputList = (a, b, c, d, e, f, g)

my return_list = grep {
    my @chars = @inputList;
    my @all;
    my @all =+ $_ for @chars;
}@inputList;

# check list of URLs

use HTTP::SimpleLinkChecker qw(check_link);

@Links = ('https://github.com/QueenieCplusplus', 'https://www.google.com.us', 'https://www.facebook.com.tw')

my @checked_links = grep{
    check_link( $_ );
    ! HTTP::SimpleLinkChecker::ERROR; 
} @Links;


