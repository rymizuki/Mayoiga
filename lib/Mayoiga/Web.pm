package  Mayoiga::Web;
use strict;
use warnings;

use parent qw(Mayoiga Chiffon::Web);

__PACKAGE__->set_use_modules(
    request    => 'Mayoiga::Web::Request',
    response   => 'Mayoiga::Web::Response',
    router     => 'Mayoiga::Web::Router',
    view       => 'Chiffon::View::Xslate',
);

1;

