ENV["RAILS_ENV"] = "test"
require File.expand_path("../../config/environment", __FILE__)
require "rails/test_help"
require "minitest/rails"
require "minitest/rails/capybara"


class ActiveSupport::TestCase
  ActiveRecord::Migration.check_pending!

  # -- they do not yet inherit this setting
  fixtures :all

  # Add more helper methods to be used by all tests here...
  def sign_in_as(user)
    visit  '/'
    click_link 'Sign in'
    fill_in 'Email', with: user.email
    fill_in 'Password', with: 'topsecret'
    click_button "Sign in"
  end

  def define_permission(user, action , thing)
    Permission.create!(user: user, action: action , thing: thing)
  end

  def check_permission_box(permission, object)
    check ["permissions",object.id, permission].join "_"
  end
end

#Capybara driver
Capybara.javascript_driver = :webkit

# Devise
class ActionController::TestCase
  include Devise::TestHelpers
end
