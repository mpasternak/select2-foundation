require 'rails'

module Select2Foundation
  module Rails
    # The stylesheets live in lib/assets/stylesheets, which Rails::Engine
    # already puts on the asset load path. Reaching for config.assets here
    # instead would blow up whenever the engine is loaded without
    # sprockets-rails, which is what `require "select2-foundation"` does.
    class Engine < ::Rails::Engine
    end
  end
end
