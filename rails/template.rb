# rails app template
# vim: fdm=marker fmr={,}
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

# Front-end {
  gem 'haml-rails'
  gem 'bootstrap-sass'
  gem 'font-awesome-rails'
  gem 'bootstrap-datepicker-rails'
  gem 'bootstrap-will_paginate'
  gem 'simple_form'
  #}

# development { 
  gem 'guard-minitest' , group: [:development]
  gem 'guard-livereload' , group: [:development]
  gem 'rack-livereload' , group: [:development]
  gem 'libnotify' , group: [:development]
  gem 'better_errors' , group: [:development]
  gem 'quiet_assets' , group: [:development]
  gem 'pry-rails' , group: [:development]
  #}

# test {
  gem 'minitest-rails' , group: [:test]
  gem 'minitest-rails-capybara' , group: [:test]
  gem 'factory_girl_rails' , group: [:test]
  #gem 'minitest-focus' , group: [:test]
  #gem 'minitest-colorize' , group: [:test]
  #}

run "bundle install"

generate "simple_form:install --bootstrap"
 
#install minitest test_helper
generate('minitest:install')

 
#config minitest Spec DSL and Fixtures defaults in config/application.rb
environment "config.generators do |g|\n g.test_framework :mini_test, spec: true, fixture: false\n end"

#TODO:

 
# setup minitest-rails-capybara and pride in test_helper
remove_file "test/test_helper.rb"
create_file "test/test_helper.rb", %q{ 
ENV["RAILS_ENV"] = "test"
require File.expand_path("../../config/environment", __FILE__)
require "rails/test_help"
require "minitest/rails"
require "minitest/rails/capybara"
require "#{Rails.root}/db/seeds.rb"

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
 }

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
guardfile = %q{
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
}
create_file "Guardfile", guardfile
 
#Add spring to bins and start spring
run 'spring binstub --all'
 
#Fix README.md
run "rm README.rdoc"
run "touch readme.asciidoc"
 
#Initialize local Git repository and Initial Commit
git :init
git add: "."
git commit: "-a -m 'Initial commit'"
 
#Create remote repo on Github and push
run "curl -u '#{ENV['GITHUB_USER']}' https://api.github.com/user/repos -d '{\"name\":\"#{app_path}\"}'"
git remote: "add origin git@github.com:#{ENV['GITHUB_USER']}/#{app_path}.git"
git push: "origin master"
 
#TODO
#add custom error pages
#continue to add gems and config the
