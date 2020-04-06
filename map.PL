# 4/06, pm 12:10, by Vivy Chen (Queenie)
# grep is convert to scalar
# map is convert to list

my @num_list = (1, 2, 4, 8, 16, 32, 64);

my @return_result = map $_ + 1000, @num_list;

print @return_result;

#[Running] perl "/Users/pintred/Desktop/map.PL"
#1001100210041008101610321064
#[Done] exited with code=0 in 0.026 seconds