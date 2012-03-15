#!/usr/bin/env perl

use Text::Sass;

open(SASS, 'my_awesome.sass');
open(SCSS, 'my_awesome.scss');
open(CSS1, '> styles_from_sass.css');
open(CSS2, '> styles_from_scss.css');

undef $/;
print CSS1 Text::Sass->sass2css(<SASS>);
print CSS2 Text::Sass->scss2css(<SCSS>);

close(CSS2);
close(CSS1);
close(SCSS);
close(SASS);
