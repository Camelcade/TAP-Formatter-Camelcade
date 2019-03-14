from debian:wheezy
run apt-get update
run apt-get -y install libtest-simple-perl libtest-harness-perl cpanminus
run apt-get -y install perl-modules
run apt-get -y install make
run cpanm Test::Simple
run cpanm --force TAP::Formatter::Camelcade
run cpanm --force App::Prove::Plugin::PassEnv

