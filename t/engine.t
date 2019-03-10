#!/usr/bin/perl
use strict;
use warnings;
use Test::More;
use Cwd;
use v5.10;
use Time::HiRes qw/time/;

my @tests = map {s{^testData/tests/(.+?).t$}{$1};
    $_} glob('testData/tests/*.t');

plan tests => scalar @tests;

$ENV{TAP_FORMATTER_CAMELCADE_TIME} = '1552222609.97356';
$ENV{TAP_FORMATTER_CAMELCADE_DURATION} = 42;

foreach my $test (@tests) {
    my $result = `prove --formatter TAP::Formatter::Camelcade -m -l testData/tests/$test.t`;
    $result =~ s/(^\s+|\r|\s+$)//gsi;
    $result =~ s/^##teamcity/teamcity/gm;
    my $result_file = "testData/results/$test.txt";
    if (-f $result_file) {
        open my $if, $result_file || die("Error creating output file: $result_file, $!");
        my $expected = join '', <$if>;
        close $if;
        $expected =~ s/(^\s+|\s+$)//gsi;
        is($result, $expected, $test);
    }
    else {
        open my $of, ">$result_file" || die("Error creating output file: $result_file, $!");
        print $of $result;
        close $of;
        fail($test);
        print STDERR "Output file is missing. Created a $result_file\n";
    }
}

done_testing();

