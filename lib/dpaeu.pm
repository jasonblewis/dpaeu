package dpaeu;
use Dancer2;
use Dancer2::Plugin::Auth::Extensible;
use Dancer2::Session::Cookie;
our $VERSION = '0.1';

get '/' => require_login sub {
    template 'index';
};

true;
