# skafold [![Build Status](https://secure.travis-ci.org/haihappen/skafold.png?branch=master)](http://travis-ci.org/haihappen/skafold)

Generates HTML scaffolds the way I need it everyday as a web developer.

The days were I needed only a `index.html` as scaffold for web apps are
long gone. Today my work depends on various different frameworks:

* [CoffeeScript](http://coffeescript.org)
* [jQuery](http://jquery.com)
* [Backbone.js](http://documentcloud.github.com/backbone) (not implemented yet)


* [Sass](http://sass-lang.com)
* [Foundation](http://foundation.zurb.com) (not implemented yet)
* [Bourbon](http://thoughtbot.com/bourbon) (not implemented yet)


* [Sprockets](https://github.com/sstephenson/sprockets)

## Usage

Skafold simplifies the generation of such a scafold by reducing it into
one command (using the incredible [thor](https://github.com/wycats/thor) by @wycats):

```sh
skafold APP_NAME
```

## Installation

```sh
gem install skafold
```

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Added some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request

## Copyright

(The MIT license)

Copyright (c) 2012 Mario Uher

Permission is hereby granted, free of charge, to any person obtaining
a copy of this software and associated documentation files (the
"Software"), to deal in the Software without restriction, including
without limitation the rights to use, copy, modify, merge, publish,
distribute, sublicense, and/or sell copies of the Software, and to
permit persons to whom the Software is furnished to do so, subject to
the following conditions:

The above copyright notice and this permission notice shall be
included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND,
EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF
MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND
NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE
LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION
OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION
WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.