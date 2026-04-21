$:.push File.expand_path("../lib", __FILE__)

require "select2-foundation/version"

Gem::Specification.new do |s|
  s.name        = "select2-foundation"
  s.version     = Select2Foundation::VERSION
  s.authors     = ["William Wedler"]
  s.email       = ["wwedler@riseup.net"]
  s.homepage    = "https://github.com/zflat/select2-foundation"
  s.summary     = "select2 theme for ZURB foundation on SASS"
  s.description = "Simple css to make select2 widgets fit in with foundation"
  s.license     = "MIT"

  s.files = Dir["{lib}/**/*", "MIT-LICENSE", "Rakefile", "README.md"]
  s.test_files = Dir["test/**/*"]

  s.required_ruby_version = ">= 2.7"

  s.add_dependency "railties", ">= 5.0", "< 9"
  s.add_dependency "select2-rails", "~> 4.0"
  s.add_dependency "foundation-rails", ">= 6.9", "< 7"

  s.add_development_dependency "bundler", "~> 2.0"
  s.add_development_dependency "rake", "~> 13.0"
end
