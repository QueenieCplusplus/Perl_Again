# 2020.4/04, pm6:05
# @ISA (called "is a")

# see invoke.PL

use Dragon
use strict
# when using strict, will got verbose from @ISA
# @ISA is matter with the finding the method that the pkg got in recursive way.
# qw means quote words
# http://tw.gitbook.net/perl/perl_qw.html

@Dragon::ISA = qw(CreatureInEarth CreatureAboveCloud);

# alternative way is as below.

package Dragon;
use vars qw(@ISA);
@ISA = qw(CreatureInEarth CreatureAboveCloud);

# or 3rd way:

package Dragon;
our @ISA = qw(CreatureInEarth CreatureAboveCloud);