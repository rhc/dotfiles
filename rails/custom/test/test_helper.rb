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

  # Add more helper methods to be used by all tests here...
  #todo: improve this part
  def select_date(date, options = {})
    field = options[:from]
    select date.strftime('%Y'), :from => "#{field}_1i" #year
    select date.strftime('%B'), :from => "#{field}_2i" #month
    select date.strftime('%d'), :from => "#{field}_3i" #day 
  end

  def select_date_and_time(date, options = {})
    field = options[:from]
    select date.strftime('%Y'), :from => "#{field}_1i" #year
    select date.strftime('%B'), :from => "#{field}_2i" #month
    select date.strftime('%d'), :from => "#{field}_3i" #day 
    select date.strftime('%H'), :from => "#{field}_4i" #hour
    select date.strftime('%M'), :from => "#{field}_5i" #minute
  end

end

#Capybara driver
Capybara.javascript_driver = :webkit
