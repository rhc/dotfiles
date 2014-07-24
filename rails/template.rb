# rails app template
#
# Run using $ rails new the_application_name -m /path/to/template.rb
#
# cat ~/.railsrc
# --skip-test-unit
# --database=postgresql 
# -m ~/dotfiles/rails/template.rb
#
# security
# gem 'devise'
gem 'thin'

gem 'slim-rails'
gem 'bootstrap-sass'
gem 'simple_form', '~> 3.1.0.rc1', github: 'plataformatec/simple_form'
gem 'high_voltage'
gem 'pundit'

gem_group :development do 
  gem 'guard-bundler'
  gem 'guard-minitest' 
  gem 'guard-livereload' 
  gem 'rack-livereload' 
  gem 'libnotify' 
  gem 'better_errors' 
  gem 'binding_of_caller', platforms: :mri_21
  gem 'quiet_assets' 
  gem 'pry-rails' 
  gem 'rails_layout'
  gem 'rails_best_practices'
  #gem 'bullet'
end

gem_group :test do 
  gem 'minitest-rails' 
  gem 'minitest-rails-capybara' 
  gem 'faker'
end

gem_group :production do
  gem "rails_12factor"
end


run "bundle install"

# Reload the browser on file changes
environment nil, env: 'development' do
  <<-eos
  config.middleware.use Rack::LiveReload
  eos
end

initializer("pundit.rb", %q[
# Extends the ApplicationController to add Pundit for authorization.
# Modify this file to change the behavior of an unauthorized error.
# Restart the server after modification of this file

module PunditHelper
  extend ActiveSupport::Concern

  included do
    include Pundit
    rescue_from Pundit::NotAuthorizedError, with: :user_not_authorized
  end
  
  private

  def user_not_authorized
    flash[:alert] = "Access denied."
    redirect_to (request.referrer || root_path)
  end
end

ApplicationController.send :include, PunditHelper
])

#
# rails g pundit:install

# Use SASS extension 
run "mv app/assets/stylesheets/application.css app/assets/stylesheets/application.css.scss"
# add a line for asset pipeline compatibility for rails 4.0
# config.assets.precompile += %w(*.png *.jpg *.jpeg *.gif)

# setup bootstrap
create_file "app/assets/stylesheets/custom.css.scss", %q[
 @import "bootstrap";
]

insert_into_file "app/assets/javascripts/application.js", after: "//= require turbolinks\n" do
  "//= require bootstrap\n"
end

generate "simple_form:install --bootstrap"
 
#install minitest test_helper
generate('minitest:install')

 
#config minitest Spec DSL and Fixtures defaults in config/application.rb
environment %q[ 
  config.generators do |g|
    g.test_framework :minitest, spec: true, fixture: true
    g.helper false
    g.assets false
    g.view_specs false
  end
]

#TODO
#insert_into_file "config/environments/development.rb" , after: "Rails.application.configure do" do
#%q[
#    config.after_initialize do
#      Bullet.enable = true
#      Bullet.alert = true 
#      Bullet.bullet_logger = true
#      Bullet.console = true
#      Bullet.growl = false 
#      Bullet.xmpp = { :account  => 'bullets_account@jabber.org',
#                      :password => 'bullets_password_for_jabber',
#                      :receiver => 'your_account@jabber.org',
#                      :show_online_status => true }
#      Bullet.rails_logger = true
#      Bullet.bugsnag = true
#      Bullet.airbrake = true
#      Bullet.add_footer = true
#      Bullet.stacktrace_includes = [ 'your_gem', 'your_middleware' ]
#  end
#  ]
#end
 
# setup minitest-rails-capybara and pride in test_helper
remove_file "test/test_helper.rb"
create_file "test/test_helper.rb", %q[ 
ENV["RAILS_ENV"] = "test"
require File.expand_path("../../config/environment", __FILE__)
require "rails/test_help"
require "minitest/rails"
require "minitest/rails/capybara"

require "minitest/pride"
#require 'minitest/focus'
#require 'minitest/colorize'

class ActiveSupport::TestCase
  ActiveRecord::Migration.check_pending!

  # -- they do not yet inherit this setting
  fixtures :all

  # Add more helper methods to be used by all tests here...
  #
end

#Capybara driver
Capybara.javascript_driver = :webkit
]

#create postgres DB for postgress.app 
#Adds default user to username for development and test
run "psql -c 'CREATE DATABASE #{app_path}_development;'"
run "psql -c 'CREATE DATABASE #{app_path}_test;'"
run "sed -i  '1,54 s/username: #{app_path}/username: #{ENV['USER']}/' config/database.yml"

comment_lines 'config/application.rb', /railtie/
prepend_file 'config/application.rb', "require 'rails/all'\n"
 
#Add minitest features to Rake task
rakefile "minitest-features.rake", %q{
Rails::TestTask.new("test:features" => "test:prepare") do |t|
  t.pattern = "test/features/**/*_test.rb"
end
Rake::Task["test:run"].enhance ["test:features"]
}

#install guard-minitest
run "bundle exec guard init minitest"

remove_file "Guardfile"
create_file "Guardfile", %q{
# vim: ft=ruby

guard :minitest,  spring: 'rake test' do
  # with Minitest::Unit
  watch(%r{^test/(.*)\/?test_(.*)\.rb$})
  watch(%r{^lib/(.*/)?([^/]+)\.rb$})     { |m| "test/#{m[1]}test_#{m[2]}.rb" }
  watch(%r{^test/test_helper\.rb$})      { 'test' }

  # Rails 4
   watch(%r{^app/(.+)\.rb$})                               { |m| "test/#{m[1]}_test.rb" }
   watch(%r{^app/controllers/application_controller\.rb$}) { 'test/controllers' }
   watch(%r{^app/controllers/(.+)_controller\.rb$})        { |m| "test/integration/#{m[1]}_test.rb" }
   watch(%r{^app/views/(.+)_mailer/.+})                   { |m| "test/mailers/#{m[1]}_mailer_test.rb" }
   watch(%r{^lib/(.+)\.rb$})                               { |m| "test/lib/#{m[1]}_test.rb" }
   watch(%r{^test/.+_test\.rb$})
   watch(%r{^test/test_helper\.rb$}) { 'test' }
end

guard 'livereload' do
  watch(%r{app/views/.+\.(erb|haml|slim)$})
  watch(%r{app/helpers/.+\.rb})
  watch(%r{public/.+\.(css|js|html)})
  watch(%r{config/locales/.+\.yml})
  # Rails Assets Pipeline
  watch(%r{(app|vendor)(/assets/\w+/(.+\.(css|js|html|png|jpg))).*}) { |m| "/assets/#{m[3]}" }
end

guard 'livereload' do
  watch(%r{app/views/.+\.(erb|haml|slim)$})
  watch(%r{app/helpers/.+\.rb})
  watch(%r{public/.+\.(css|js|html)})
  watch(%r{config/locales/.+\.yml})
  # Rails Assets Pipeline
  watch(%r{(app|vendor)(/assets/\w+/(.+\.(css|js|html|png|jpg))).*}) { |m| "/assets/#{m[3]}" }
end

guard :bundler do
  watch('Gemfile')
end
}
 
#Add spring to bins and start spring
run 'spring binstub --all'
 
#Fix README.md
remove_file "README.rdoc"
create_file "readme.asciidoc"
 
#Initialize local Git repository and Initial Commit
git :init
git add: "."
git commit: "-a -m 'Initial commit'"
 
#Create remote repo on Github and push
if yes?("Create repo on Github?(y/n)") 
  run "curl -u '#{ENV['GITHUB_USER']}' https://api.github.com/user/repos -d '{\"name\":\"#{app_path}\"}'"
  git remote: "add origin git@github.com:#{ENV['GITHUB_USER']}/#{app_path}.git"
  git push: "origin master"
end
 
#TODO
# cache partials results in development
# read caching with rails in the RailsGuide
# config.action_controller.perform_caching = true
#
