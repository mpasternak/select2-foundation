# Select2-Foundation

[![CI](https://github.com/zflat/select2-foundation/actions/workflows/ci.yml/badge.svg)](https://github.com/zflat/select2-foundation/actions/workflows/ci.yml)
[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](./MIT-LICENSE)

select2 (v4) Theme for Zurb Foundation (v6.9)

[Examples](https://select2-foundation.herokuapp.com/ "select2-foundation examples")

## Installation

### Manual Install

In order to apply select2-foundation theme to your project, add the following files:

    <link rel="stylesheet" href="select2.css">
    <link rel="stylesheet" href="select2-foundation-theme.css">

### npm (from git)

`select2-foundation` is not published on npm. Pull it directly from this repository:

    npm install foundation-sites select2 \
      "select2-foundation@github:zflat/select2-foundation"

### Bower
<pre><code>"dependencies": {
    "foundation-sites" : "^6.9.0",
    "select2" : "^4.0.13",
    "select2-foundation" : "https://github.com/zflat/select2-foundation.git"
  }</code></pre>

### Rails (ruby gem)

Installation is similar to installing foundation-rails.

Add to your application's Gemfile:

      gem 'select2-foundation'

#### Configuration from generator

Run the generator for installation

      rails g select2_foundation:install

#### Manual configuration

Create a sass partial app/assets/stylesheets/_settings_select2.scss

Add to your app/assets/stylesheets/application.css:

      *= require select2/select2-foundation

### Apply the theme

Configure select2 To apply the theme by passing `foundation` to the theme option when initializing:

    $( "#dropdown" ).select2({
        theme: "foundation"
    });


## Development

### Styleguide rails app

A sample Rails app lives in `test/styleguide06/`. It renders the theme against
Foundation 6.9 so you can see changes in a browser.

      cd test/styleguide06
      bundle install
      bundle exec rails s

Navigate to <http://localhost:3000/> to view the demo page.

Requires Ruby 3.2 or newer, because the asset pipeline compiles Foundation's
Sass with dart-sass.

### Running the tests

From the repository root:

      bundle install
      bundle exec rake test

The suite boots `test/styleguide06`, renders the styleguide page and compiles
the asset bundles, so a broken Sass import or a missing dependency fails the
build rather than showing up as a 500 in the browser.

### Building `dist`

Install build tools:

* npm (Node 20.19+, the minimum dart-sass supports)

Then:

      npm install
      npm run build         # builds both expanded and compressed CSS
      npm run watch         # watch mode (expanded only)

## Changelog

### 0.2.0
 * Target Foundation 6.9 (`foundation-sites ^6.9.0`, `foundation-rails ~> 6.9`)
 * Replace grunt build with `sass` (dart-sass) via npm scripts
 * Drop direct `sass` gem dependency
 * Ship `app/views` in the gem, so the styleguide partial reaches host apps
 * Require `foundation-rails` and `select2-rails` from the gem, so their asset
   paths are registered without the host app listing them again
 * Modernise the `test/styleguide06` sample app for Rails 7: Sprockets 4
   manifest, dart-sass instead of the end-of-life libsass, Foundation 6.9
   settings, no turbolinks
 * GitHub Actions CI for gem install, test suite, sample app boot and npm build

### 0.1.1
 * Release to ruby gems


### 0.0.1
 * Initial sass

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
