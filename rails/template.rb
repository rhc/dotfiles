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
gem 'high_voltage'
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
insert_into_file 'test/test_helper.rb', "\nrequire 'minitest/rails'", after: "'rails/test_help'"
insert_into_file 'test/test_helper.rb', "\nrequire 'minitest/rails/capybara'", after: "'minitest/rails'"
#
environment %q[
  config.generators do |g|
    g.test_framework :minitest, spec: true, fixture: true
    g.helper false
    g.assets false
    g.view_specs false
  end
]

#
# Postgresql
#
run "psql -c 'DROP DATABASE IF EXISTS #{app_path}_development;'"
run "psql -c 'DROP DATABASE IF EXISTS #{app_path}_test;'"
run "psql -c 'CREATE DATABASE #{app_path}_development;'"
run "psql -c 'CREATE DATABASE #{app_path}_test;'"
run "sed -i  '1,54 s/username: #{app_path}/username: #{ENV['USER']}/' config/database.yml"


#
# Bootstrap
#
generate 'layout:install bootstrap3'
generate "simple_form:install --bootstrap"
copy_file 'app/assets/stylesheets/font-config.scss' # for awesome-fonts
remove_file 'app/views/layouts/_navigation_links.html.erb'
copy_file 'app/views/layouts/_navigation_links.html.slim'
#
generate 'model user name role:integer'
run 'rake db:migrate'
copy_file 'app/models/user.rb', :force => true
copy_file 'test/fixtures/users.yml', :force => true
copy_file 'test/models/user_test.rb', :force => true

generate 'pages:home'
generate 'pages:about'
generate 'clean:gemfile'
generate 'clean:routes'

#
# Devise
#
generate 'devise:install'
generate 'devise user'
rake 'db:migrate'
generate 'devise:views'
# TODO translate to slim
remove_file 'app/views/devise/sessions/new.html.erb'
copy_file 'app/views/devise/sessions/new.html.slim'
remove_file 'app/views/devise/registrations/new.html.erb'
copy_file 'app/views/devise/registrations/new.html.slim'

generate 'pages:users --force'
generate 'pages:authorized --force'
copy_file 'config/initializers/hide_passwords_in_logs.rb'
remove_file 'config/initializers/devise_permitted_parameters.rb'

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

# comment_lines 'config/application.rb', /railtie/
# prepend_file 'config/application.rb', "require 'rails/all'\n"

# Add spring to bins and start spring
run 'spring binstub --all'

# Fix README.md
remove_file "README.rdoc"
create_file "readme.adoc"


# TODO: configure the application to use SSL in production
# in config/environments/production.rb
# config.force_ssl = true

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
