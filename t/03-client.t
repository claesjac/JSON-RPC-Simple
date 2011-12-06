#!/usr/bin/perl

use strict;
use warnings;

use Test::More tests => 3;

use JSON::RPC::Simple;

BEGIN { use_ok("JSON::RPC::Simple::Client"); }

use constant SERVER_ADDR => "http://www.raboof.com/projects/jayrock/demo.ashx";
my $client = JSON::RPC::Simple->connect(SERVER_ADDR);

my $r = $client->echo({ text => "Hello World"});
is($r, "Hello World");

my $client2 = JSON::RPC::Simple->connect(SERVER_ADDR, { GET => 1 });
$r = $client2->add({ a => 32, b => 10 });
is($r, 42);
