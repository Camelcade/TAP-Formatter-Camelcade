from centos:6

run yum update --assumeyes
run yum install perl --assumeyes
run yum install rsync --assumeyes
run yum install perl-Test-Harness --assumeyes
run find / -type d | grep -vE "/sys|/proc" | xargs chmod u+w
run yum install perl-CPAN --assumeyes
run cpan CPAN
run cpan TAP::Formatter::Camelcade
run yum install perl-Test-Simple --assumeyes
run cpan Test::Simple
run cpan App::Prove::Plugin::PassEnv
