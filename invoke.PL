# 2020. 4/04, sat pm5
# -> calling arrow is alike the subroutine of Class called Methods Invoke

use Dragon;
use iBot;
use tPrincess;

Dragon->speak;
iBot->speak;
tPrincess->speak;

# output
    #> Qong Qong !
    #> Gi Gi Gi Gi !
    #> Hi! I am T Princess.

# class name is constant, and we can put the class name in the variable also.
# to define a variable in this way, start from my $variable_name

my $creativeThing = 'Dragon'
$creativeThing->speak;

# then the Dragon->speak is invoked now.
