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
