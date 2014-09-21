ENV["RAILS_ENV"] = "test"
require File.expand_path("../../config/environment", __FILE__)
require "rails/test_help"
require "minitest/rails"
require "minitest/rails/capybara"

#require "minitest/pride"
require 'minitest/reporters'
#require 'minitest/focus'
#require 'minitest/colorize'
reporter_options = { color: true}
Minitest::Reporters.use!( Minitest::Reporters::DefaultReporter.new(reporter_options), ENV, Minitest.backtrace_filter )

class ActiveSupport::TestCase
  ActiveRecord::Migration.check_pending!

  # -- they do not yet inherit this setting
  fixtures :all

  # Add more helper methods to be used by all tests here...
  #
end

#Capybara driver
Capybara.javascript_driver = :webkit
