require "test_helper"

# The gem is nothing but assets, so compiling them is the test that matters.
# Sass or Sprockets breakage shows up here rather than as a 500 in the browser.
class AssetCompilationTest < ActiveSupport::TestCase
  %w[application.css application.js].each do |logical_path|
    test "#{logical_path} compiles" do
      asset = Rails.application.assets.find_asset!(logical_path)

      assert_predicate asset.length, :positive?
    end
  end

  test "application.css contains the select2 foundation theme" do
    css = Rails.application.assets.find_asset!("application.css").to_s

    assert_includes css, "select2-container--foundation"
  end

  test "application.css contains foundation itself" do
    css = Rails.application.assets.find_asset!("application.css").to_s

    assert_includes css, ".button"
  end
end
