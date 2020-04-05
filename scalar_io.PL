# 2020, 4/05, sun, pm 5:40 - 5:50

use IO::Scalar;

my $log = ''; # string type

my $scalar_fh = IO::Scalar -> new( \$log);

print $scalar_fh "I wanna say somthing verbose..."

# above code means every log will save in the string '' type called log
# and to save every log including 'viviers'

use IO::Scalar;

my $log = '';

my $scalar_fh = IO::Scalar -> new( \$log );

while( <$scalar_fh> ) {
    next unless /Viviers/;
    print;
}