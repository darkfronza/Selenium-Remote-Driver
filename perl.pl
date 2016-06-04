use strict;
use warnings;
use Test::More;
use lib('./lib/');
use Test::Selenium::Remote::Driver;

my $driver = Test::Selenium::Remote::Driver->new(
    error_handler => sub { print 'whee' }
);
$driver->get('https://www.google.com');
$driver->content_like(qr/noooowjefpiawjpefiwajewpf/);

done_testing;
