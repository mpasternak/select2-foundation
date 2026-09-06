source 'https://rubygems.org'

# Gem's dependencies in select2-foundation.gemspec.
# Bundler will treat runtime dependencies like base dependencies, and
# development dependencies will be added by default to the :development group.
gemspec

# What the test/styleguide06 sample app needs on top of the gem itself, both
# for `rake test` from here and for `rails s` inside the app (which loads this
# file through eval_gemfile). The app is a pure asset-pipeline host with no
# database, so only the railties behind action_controller + sprockets are here.
group :development, :test do
  gem 'rails', '~> 7.1.0'
  gem 'sprockets-rails'
  # dart-sass, not sassc: libsass cannot parse the `sass:math` module that
  # Foundation 6.9 uses, and it has been end-of-life since 2020.
  gem 'dartsass-sprockets'
  gem 'jquery-rails'
end
