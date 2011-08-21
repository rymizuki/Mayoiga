use strict;
use warnings;

use Mayoiga;

my $home = Mayoiga->base_dir;
return +{
    app_name => 'mayoiga',
    view => {
        'Chiffon::View::Xslate' => +{
            path   => $home->file('assets/template')->stringify,
            cache     => 1,
            cache_dir => '/home/mizuki/.tmp/mayoiga',
            syntax    => 'Kolon',
            type      => 'html',
            suffix    => '.html',
        },
    },
    datasource => +{
        master => +{
            dsn => 'dbi:mysql:mayoiga;user=root',
        },
    },
    hostname => +{
    },
    plugins => +{
    },
};


