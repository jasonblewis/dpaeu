requires "Dancer2" => "0.166001";
requires "Dancer2::Plugin::Auth::Extensible";
requires "Dancer2::Session::Cookie";
requires "Unix::Passwd::File";
requires "Authen::Simple::PAM";


recommends "YAML"             => "0";
recommends "URL::Encode::XS"  => "0";
recommends "CGI::Deurl::XS"   => "0";
recommends "HTTP::Parser::XS" => "0";

on "test" => sub {
    requires "Test::More"            => "0";
    requires "HTTP::Request::Common" => "0";
};
