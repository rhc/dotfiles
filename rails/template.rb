# rails app template
#
# Run using $ rails new the_application_name -m /path/to/template.rb
#
# cat ~/.railsrc
# -m ~/dotfiles/rails/template.rb
#
#
gem 'slim-rails'
gem 'bootstrap-sass'
gem 'autoprefixer-rails'
gem 'font-awesome-sass'
gem 'simple_form'
gem 'high_voltage' # required by rails_apps_pages
gem 'devise'
gem 'pundit'
gem 'responders'
gem 'record_tag_helper', '~> 1.0'

gem_group :development do
  gem 'guard-bundler'
  gem 'guard-minitest'
  gem 'guard-livereload'
  gem 'rack-livereload'
  gem 'better_errors'
  gem 'binding_of_caller'
  gem 'pry-byebug'
  gem 'pry-rails'
  gem 'rails_layout'
  gem 'rails_best_practices'
  gem 'rails_apps_pages'
  gem 'annotate'
  gem 'bundler-audit'
end

gem_group :test do
  gem 'minitest-rails-capybara'
  gem 'faker'
end

gem_group :development, :test do
  gem 'rubocop'
  gem 'rubycritic'
end

# run "bundle install"

def source_paths
  Array(super) + [File.join(File.expand_path(File.dirname(__FILE__)), 'custom')]
end

#
# Minitest
#
remove_file 'test/test_helper.rb'
file 'test/test_helper.rb', <<-CODE
ENV["RAILS_ENV"] = "test"
require File.expand_path("../../config/environment", __FILE__)
require "rails/test_help"
require "minitest/rails"
require "minitest/rails/capybara"


class ActiveSupport::TestCase
  ActiveRecord::Migration.check_pending!

  fixtures :all

  # Add more helper methods to be used by all tests here...
  def login_as(user)
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
  include Devise::Test::ControllerHelpers
end
CODE
#
# in configuration/application.rb
environment %q[
  config.generators do |g|
    g.test_framework :minitest, spec: true, fixture: true
    g.helper false
    g.assets false
    g.view_specs false
  end
]


#
# Guard
#
copy_file "Guardfile"
# Reload the browser on file changes
environment nil, env: 'development' do
  <<-eos
  config.middleware.use Rack::LiveReload
  eos
end

#
# Postgresql
#
run "psql -c 'DROP DATABASE IF EXISTS #{app_path}_development;'"
run "psql -c 'DROP DATABASE IF EXISTS #{app_path}_test;'"
run "psql -c 'CREATE DATABASE #{app_path}_development;'"
run "psql -c 'CREATE DATABASE #{app_path}_test;'"
# TODO: change the username to ENV['USER']
# run "sed -i  '1,54 s/username: #{app_path}/username: #{ENV['USER']}/' config/database.yml"


#
# Bootstrap
#
remove_file 'app/assets/stylesheets/application.css'
create_file 'app/assets/stylesheets/application.scss', <<-CODE
@import "bootstrap-sprockets";
@import "bootstrap";
@import 'font-awesome-sprockets';
@import 'font-awesome';
CODE
#
insert_into_file 'app/assets/javascripts/application.js', before: "//= require_tree ." do <<-CODE
//= require bootstrap-sprockets
CODE
end

#
# Simple Form
#
generate 'simple_form:install --bootstrap'

#
# Devise
#
generate 'devise:install'
environment 'config.action_mailer.default_url_options = { host: "localhost", port: 3000}', env: :development
#
generate 'model user name role:integer'
copy_file 'app/models/user.rb', :force => true
copy_file 'test/fixtures/users.yml', :force => true
copy_file 'test/models/user_test.rb', :force => true
generate 'devise user'
run ' rails db:migrate'
# generate 'devise:views'
# TODO translate to slim
# remove_file 'app/views/devise/sessions/new.html.erb'
# copy_file 'app/views/devise/sessions/new.html.slim'
# remove_file 'app/views/devise/registrations/new.html.erb'
# copy_file 'app/views/devise/registrations/new.html.slim'
#
generate 'pages:users --force'
generate 'pages:authorized --force'
copy_file 'config/initializers/hide_passwords_in_logs.rb'
remove_file 'config/initializers/devise_permitted_parameters.rb'


#
# Navigation
#
remove_file 'app/views/layouts/application.html.erb'
# TODO Change here to get the name as a logo
copy_file 'app/views/layouts/application.html.slim'
copy_file 'app/views/layouts/_navigation.html.slim'
copy_file 'app/views/layouts/_navigation_links.html.slim'
copy_file 'app/views/layouts/_messages.html.slim'
#
#
generate 'pages:home'
generate 'pages:about'
# generate 'clean:gemfile'
generate 'clean:routes'
#
#
#
# # comment_lines 'config/application.rb', /railtie/
# # prepend_file 'config/application.rb', "require 'rails/all'\n"
#
# # Add spring to bins and start spring
# run 'spring binstub --all'
#
# Fix README.md
remove_file "README.rdoc"
create_file "readme.adoc"
#
#
# # TODO: configure the application to use SSL in production
# # in config/environments/production.rb
# # config.force_ssl = true
#
#
# Rubocop
#
copy_file '.rubocop.yml'

#
#  Git
#
git :init
git add: "."
git commit: "-a -m 'Initial commit'"
case
# Github
when yes?("Create repo on Bitbucket? \033[33m(y/n)\033[0m" )
  data = {
    scm: 'git',
    is_private: true,
    forking_policy: 'allow_forks',
    name: app_name.titleize,
    language: 'ruby'
  }
  data_fields = data.map {|k,v| k.to_s + "=" + v.to_s}.reduce("") {|accu,i| accu + " --data \"#{i}\""}
  #
  repo_slug = @app_name.titleize.parameterize
  owner = "ckyony"
  password = ask("password")
  credentials = "#{owner}:#{password}"
  # --user 'username:password'
  # --pubkey ~/.ssh/id_rsa.pub # TODO: can we make this work???
  # TODO: what if this fails? can we re-try?
  # run "echo #{credentials}"
  run "curl --request POST --user '#{credentials}' https://api.bitbucket.org/2.0/repositories/#{owner}/#{repo_slug} #{data_fields}"
  # Add code to the repository
  git :init
  git add: '--all .', commit: "-m 'Initial commit'"
  git remote: "add origin ssh://git@bitbucket.org/#{owner}/#{@app_name.titleize.parameterize}.git"
  git push: "-u origin --all"
# Bitbucket
when yes?("Create repo on Github?  \033[33m(y/n)\033[0m")
  run "curl -u '#{ENV['GITHUB_USER']}' https://api.github.com/user/repos -d '{\"name\":\"#{app_path}\"}'"
  git remote: "add origin git@github.com:#{ENV['GITHUB_USER']}/#{app_path}.git"
  git push: "origin master"
end

 run "echo 'Voila! Have (a lot of) fun' "
