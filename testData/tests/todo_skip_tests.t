use warnings FATAL => 'all';
use strict;
use Test::More;

pass "Initial";

TODO:{
    todo_skip "Testing skip", 2;
    fail("First fail");
    fail("Last fail");
}

pass "Last one";

done_testing;