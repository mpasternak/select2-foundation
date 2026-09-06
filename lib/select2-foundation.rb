require "select2-foundation/version"

# Both are hard runtime dependencies: the theme's Sass imports Foundation's
# settings and mixins, and the stylesheet only makes sense next to select2's
# own CSS. Requiring them here means their engines register their asset paths
# without the host app having to list them a second time.
require "foundation-rails"
require "select2-rails"

module Select2Foundation
  module Rails
    require "select2-foundation/engine"
  end
end
