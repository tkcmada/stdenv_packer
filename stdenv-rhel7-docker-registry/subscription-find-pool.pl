#!/usr/bin/perl

my $found = 0;
while(<STDIN>) {
  chomp;
  if( /Subscription Name: Red Hat Enterprise Linux Server/ ) {
    $found = 1;
#    print("found subscription:" . $_);
  }
  if( $found and /Pool ID: +/ ) {
    print $';
    exit 0;
  }


}
exit 1;
