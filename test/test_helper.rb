# Configure Rails Environment
ENV["RAILS_ENV"] = "test"

require File.expand_path("../../test/styleguide06/config/environment.rb", __FILE__)

require "minitest/autorun"
require "active_support/test_case"

# Filter out Minitest backtrace while allowing backtrace from other libraries
# to be shown.
Minitest.backtrace_filter = Minitest::BacktraceFilter.new
