# Shamelessly pulled from the docs on GitHub

# use the helper to create your View
myapp_create.pl view CSS Sass

# add custom configration in View/CSS.pm
__PACKAGE__->config(
);

# render view from lib/MyApp.pm
# or lib/MyApp::Controller::SomeController.pm
sub message : Global {
    my ( $self, $c ) = @_;
    $c->forward( $c->view('CSS') );
}
