# pulled from docs on CPAN

package MyApp;
use Mojo::Base 'Mojolicious';

sub startup {
    my ($self) = shift;
    $self->plugin('sass_renderer'); 
}

1;