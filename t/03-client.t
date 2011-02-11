#!/usr/bin/perl

use strict;
use warnings;

use Test::More tests => 2;

use JSON::RPC::Simple;

BEGIN { use_ok("JSON::RPC::Simple::Client"); }

use constant SERVER_ADDR => "http://www.raboof.com/Projects/Jayrock/Demo.ashx";
my $client = JSON::RPC::Simple->connect(SERVER_ADDR);

my $r = $client->echo("Hello World");
is($r, "Hello World");