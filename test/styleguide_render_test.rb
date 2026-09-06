require "test_helper"

# Renders the styleguide page of the test/styleguide06 sample app. This is the
# end-to-end check that the engine's view partial is found and that the layout
# links assets the pipeline can actually build.
class StyleguideRenderTest < ActionDispatch::IntegrationTest
  test "the styleguide page renders" do
    get "/"

    assert_response :success
    assert_select "title", /Styleguide/
    assert_select "select.js-example-basic-single-foundation"
    assert_select "select.js-example-basic-mult-foundation"
  end

  test "the layout links the compiled asset bundles" do
    get "/"

    assert_select "link[rel=stylesheet][href*=application]"
    assert_select "script[src*=application]"
  end
end
