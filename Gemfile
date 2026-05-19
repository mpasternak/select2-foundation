source 'https://rubygems.org'

# Gem's dependencies in select2-foundation.gemspec.
# Bundler will treat runtime dependencies like base dependencies, and
# development dependencies will be added by default to the :development group.
gemspec

# Dependencies needed to run `rake test` against the test/styleguide06
# sample Rails app. The test app is a pure asset-pipeline host, so we only
# need the railties needed for action_controller + sprockets.
group :development, :test do
  gem 'rails', '~> 7.1.0'
  gem 'sprockets-rails'
  gem 'sassc-rails'
  gem 'jquery-rails'
end
