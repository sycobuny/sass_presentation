Intro to Sass - DCBPW/April 14, 2012
====================================

What Is Sass?
-------------

* CSS Compiler - Converts other languages to CSS
* Inspired by "HAML" - HTML Compiler
* Turing complete - add variables/functions/mixins/control structures/etc.
* 2 Syntaxes - SCSS (sassy CSS), and SASS (think perl vs. Perl)

SCSS vs. SASS
-------------

* SCSS can be *just* CSS, SASS is a completely different syntax
* SCSS is semicolon-terminated, SASS is newline-terminated
* SCSS uses {} for nesting, SASS uses indentation (à la HAML/Python)
* **IMHO** SCSS better for existing projects, SASS better for new ones

Variable Construction
---------------------

* Perlish (using $)
* Mostly-"regular" naming rules
  * $is_valid_, $_also_valid_, $9invalid, $valid-but-bad
* CSS-based datatypes
  * Numbers, Strings, Colors, "Lists", Booleans

Initial CSS Example
-------------------

```css
body { background-color: #EEE; font-size: 12px; }
h1 {
    background-color: #CCC;
    color:            #FA3B3B;
    font-size:        24px;
}
a {
    background-color: #CCC;
    color:            #FA3B3B;
    text-decoration:  none;
    border-bottom:    3px solid #AAA;
    border-top:       3px solid #AAA;
}
```

Sass Variables
--------------

### SCSS
```scss
$bgcolor:    #EEE;
$size:       12px;
$accents:    #FA3B3B;
$accentbg:   #CCC;
$linkborder: 3px solid #AAA;

body { background-color: $bgcolor; font-size: $size; }
h1 {
    background-color: $accentbg;
    color:            $accents;
    font-size:        $size * 2;
}
a {
    background-color: $accentbg;
    color:            $accents;
    text-decoration:  none;
    border-bottom:    $linkborder;
    border-top:       $linkborder;
}
```

### SASS
```sass
$bgcolor:    #EEE
$size:       12px
$accents:    #FA3B3B
$accentbg:   #CCC
$linkborder: 3px solid #AAA

body
    background-color: $bgcolor
    font-size:        $size
h1
    background-color: $accentbg
    color:            $accents
    font-size:        $size * 2
a
    background-color: $accentbg
    color:            $accents
    text-decoration:  none
    border-bottom:    $linkborder
    border-top:       $linkborder
```

Sass Functions
--------------

### SCSS
```scss
$bgcolor:    #EEE;
$size:       12px;
$accents:    mix($bgcolor, #F00, 25%);
$accentbg:   darken($bgcolor, 13.5%);
$linkborder: 3px solid darken($bgcolor, 26.5%);

body { background-color: $bgcolor; font-size: $size; }
h1 {
    background-color: $accentbg;
    color:            $accents;
    font-size:        $size * 2;
}
a {
    background-color: $accentbg;
    color:            $accents;
    text-decoration:  none;
    border-bottom:    $linkborder;
    border-top:       $linkborder;
}
```

### SASS
```sass
$bgcolor:    #EEE
$size:       12px
$accents:    mix($bgcolor, #F00, 25%)
$accentbg:   darken($bgcolor, 13.5%)
$linkborder: 3px solid darken($bgcolor, 26.5%)

body
  background-color: $bgcolor
  font-size:        $size
h1
  background-color: $accentbg
  color:            $accents
  font-size:        $size * 2
a
  background-color: $accentbg
  color:            $accents
  text-decoration:  none
  border-bottom:    $linkborder
  border-top:       $linkborder
```

Sass Mixins
-----------

### SCSS
```scss
$bgcolor:    #EEE;
$size:       12px;
$accents:    mix($bgcolor, #F00, 25%);
$accentbg:   darken($bgcolor, 13.5%);
$linkborder: 3px solid darken($bgcolor, 26.5%);

@mixin accented {
    background-color: $accentbg;
    color:            $accents;
}

body { background-color: $bgcolor; font-size: $size; }
h1 {
    @include accented;
    font-size: $size * 2;
}
a {
    @include accented;
    text-decoration: none;
    border-bottom:   $linkborder;
    border-top:      $linkborder;
}
```

### SASS
```sass
$bgcolor:    #EEE
$size:       12px
$accents:    mix($bgcolor, #F00, 25%)
$accentbg:   darken($bgcolor, 13.5%)
$linkborder: 3px solid darken($bgcolor, 26.5%)

@mixin accented
    background-color: $accentbg
    color:            $accents

body
    background-color: $bgcolor
    font-size:        $size
h1
    @include accented
    font-size: $size * 2
a
    @include accented
    text-decoration: none
    border-bottom:   $linkborder
    border-top:      $linkborder
```

Using Sass
----------

* Rubygems
  * `$ gem install sass`
    * `$ sudo gem install sass`
  * `$ sass some.sass styles.css`
  * `$ sass --watch some.scss styles.css`
* Text::Sass
  * `Text::Sass->scss2css($scss);`
  * `Text::Sass->sass2css($sass);`
* Catalyst
  * perl-catalyst-view-sass
  * http://github.com/bolav/perl-catalyst-view-sass
* Mojolicious
  * CPAN: Mojolicious::Plugin::SassRenderer
  * Supports SASS-only
* Dancer
  * CPAN: Dancer::Plugin::Preprocess::Sass
  * Suports SCSS and SASS
  * Supports caching

Contact
-------

* Stephen Belcher
* Email: sbelcher@gmail.com
* Twitter: @sycobuny
* Slides at: [http://github.com/sycobuny/sass_presentation]()
