#!/usr/bin/env perl
use strict;
use warnings;
use Authen::Simple::PAM;
use Term::ReadPassword;
use Data::Dumper;

sub authenticate_user {
  my ($username, $password) = @_;
  my $pam = Authen::Simple::PAM->new( service => 'login' );
  return $pam->authenticate($username, $password);
};

print "login: ";
my $username = <STDIN>;
my $password = read_password('password: ');

print Dumper(authenticate_user($username,$password));
