require File.expand_path('../boot', __FILE__)

# select2-foundation is a pure asset-pipeline engine — only the railties we
# actually need are loaded here so the test app boots without a database.
require "rails"
require "action_controller/railtie"
require "action_view/railtie"
require "sprockets/railtie"

Bundler.require(*Rails.groups)

module Dummy
  class Application < Rails::Application
    config.load_defaults 7.0
    config.eager_load_paths = []
  end
end
