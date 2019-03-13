from centos:7

run yum update --assumeyes
run yum install perl --assumeyes
run yum install rsync --assumeyes
run yum install perl-Test-Harness --assumeyes
run find / -type d | grep -vE "/sys|/proc" | xargs chmod u+w
run yum install perl-App-cpanminus --assumeyes
run cpanm TAP::Formatter::Camelcade --force
run yum install perl-Test-Simple --assumeyes
run cpanm Test::Simple
