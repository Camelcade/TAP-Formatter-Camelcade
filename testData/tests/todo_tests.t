use warnings FATAL => 'all';
use strict;
use Test::More;

pass "Initial";

TODO:{
    local $TODO = "Here is TODO reason";
    fail("First fail");
    fail("Last fail");
}

pass "Last one";

done_testing;