# 4/06, pm 12:15, by Vivy Chen (Queenie)
# %hash { key, value }
# map { before, after }

my @figures_bag = (1, 2, 3, 4);

my %hash_box = map { $_, $_ * 0.5 } @figures_bag;

print %hash_box;

#[Running] perl "/Users/pintred/Desktop/map2.PL"
# 2110.54231.5 經過 map 輸出無序的輸出集合配對 應該是 2 : 1, 1 : 0.5, 4 : 2, 3 : 1.5
# [Done] exited with code=0 in 0.021 seconds
