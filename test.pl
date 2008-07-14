#!/usr/bin/perl


package Demo;
use Moose;

with 'MooseX::Log::Log4perl';

1;

package main;

use Log::Log4perl qw(:easy);

BEGIN {
	print STDERR "Start\n";
	Log::Log4perl->easy_init($TRACE);
}

my $d = Demo->new();
$d->log_debug("blabla");
$d->log->info("Done.");
