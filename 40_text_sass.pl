#!/usr/bin/env perl

use Text::Sass;

open(SASS, 'myawesome.sass');
open(SCSS, 'myawesome.scss');
open(CSS1, '> styles_fromsass.css');
open(CSS2, '> styles_fromscss.css');

undef $/;
print CSS1 Text::Sass->sass2css(<SASS>);
print CSS2 Text::Sass->scss2css(<SCSS>);

close(CSS2);
close(CSS1);
close(SCSS);
close(SASS);
