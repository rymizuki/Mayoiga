use strict;
use warnings;
use lib qw(/home/mizuki/project/Mayoiga/lib);

use Mayoiga::Web;
use Plack::Builder;

my $home = Mayoiga::Web->base_dir;
builder {
    enable 'Static',
        path => qr{^/(img/|js/|css/|favicon\.ico)},
        root => $home->file('assets/htdocs')->stringify;
    enable 'StackTrace';
    enable 'Session';
    Mayoiga::Web->app;
};

