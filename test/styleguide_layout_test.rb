require "test_helper"

# The styleguide markup and the Foundation mixins the app includes have to
# agree on a grid. They did not: the markup used the float grid (.row /
# .columns) while Foundation 6.9's default settings build the XY grid, so the
# page rendered and every asset compiled while the demo looked unstyled.
class StyleguideLayoutTest < ActionDispatch::IntegrationTest
  LAYOUT_CLASS = /\A(row|columns|grid-x|grid-margin-x|cell|small-\d+)\z/

  test "every layout class the styleguide markup uses is defined in the CSS" do
    get "/"

    css = Rails.application.assets.find_asset!("application.css").to_s
    used = response.body.scan(/class="([^"]*)"/).flatten
                        .flat_map(&:split).uniq.grep(LAYOUT_CLASS)

    assert_predicate used, :any?, "found no layout classes in the rendered page"

    missing = used.reject { |name| css.include?(".#{name}") }
    assert_empty missing,
                 "layout classes used in the markup but absent from the " \
                 "compiled CSS: #{missing.join(', ')}"
  end
end
