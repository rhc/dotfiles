# rails app template
#
# Run using $ rails new the_application_name -m /path/to/template.rb
#
# cat ~/.railsrc
# -m ~/dotfiles/rails/template.rb
#
gem 'thin'
gem 'slim-rails'
gem 'bootstrap-sass'
gem 'font-awesome-sass'
gem 'simple_form'
gem 'high_voltage'
gem 'devise'
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
  gem 'pry-byebug'
  gem 'pry-rails' 
  gem 'rails_layout'
  gem 'rails_best_practices'
  gem 'rails_apps_pages'
  #gem 'bullet'
end

gem 'minitest-rails' 
gem_group :test do 
  gem 'minitest-reporters'
  gem 'minitest-rails-capybara' 
  gem 'faker'
end

gem_group :production do
  gem "rails_12factor"
end

run "bundle install"

# minitest test_helper
generate('minitest:install')

def source_paths
  Array(super) + [File.join(File.expand_path(File.dirname(__FILE__)), 'custom')]
end

# create postgres DB for postgress.app 
# add default user to username for development and test
run "psql -c 'DROP DATABASE IF EXISTS #{app_path}_development;'"
run "psql -c 'DROP DATABASE IF EXISTS #{app_path}_test;'"
run "psql -c 'CREATE DATABASE #{app_path}_development;'"
run "psql -c 'CREATE DATABASE #{app_path}_test;'"
run "sed -i  '1,54 s/username: #{app_path}/username: #{ENV['USER']}/' config/database.yml"


# config minitest Spec DSL and Fixtures defaults in config/application.rb
environment %q[ 
  config.generators do |g|
    g.test_framework :minitest, spec: true, fixture: true
    g.helper false
    g.assets false
    g.view_specs false
  end
]

# Bootstrap3
run "mv app/assets/stylesheets/application.css app/assets/stylesheets/application.css.scss"
#TODO: add custom.css.scss
#
remove_file 'app/assets/javascripts/application.js'
# add a line for asset pipeline compatibility for rails 4.0
# config.assets.precompile += %w(*.png *.jpg *.jpeg *.gif)

# setup bootstrap
generate 'layout:install bootstrap3'
generate "simple_form:install --bootstrap"
copy_file 'app/assets/stylesheets/font-config.scss' # for awesome-fonts
remove_file 'app/views/layouts/_navigation_links.html.erb'
copy_file 'app/views/layouts/_navigation_links.html.slim'

generate 'model user name role:integer'
run 'rake db:migrate'
copy_file 'app/models/user.rb', :force => true
copy_file 'test/fixtures/users.yml', :force => true
copy_file 'test/models/user_test.rb', :force => true


generate 'pages:home'
generate 'pages:about'
generate 'clean:gemfile'
generate 'clean:routes'

# generate 'analytics:google'


# Devise
generate 'devise:install'


generate 'devise user'
rake 'db:migrate'
generate 'layout:devise bootstrap3'

generate 'pundit:install'
generate 'pages:users --force'
generate 'pages:authorized --force'

copy_file 'config/initializers/hide_passwords_in_logs.rb'
 
#### Guard, 
# guard-minitest
copy_file "Guardfile"


# Reload the browser on file changes
environment nil, env: 'development' do
  <<-eos
  config.middleware.use Rack::LiveReload
  eos
end
 
# setup minitest-rails-capybara in test_helper
copy_file 'test/test_helper.rb', force: true
copy_file 'config/initializers/backtrace_silencers.rb', force: true

comment_lines 'config/application.rb', /railtie/
prepend_file 'config/application.rb', "require 'rails/all'\n"
 
# add minitest features to Rake task
copy_file 'minitest-features.rake', 'lib/tasks/minitest-features.rake'
 
#Add spring to bins and start spring
run 'spring binstub --all'
 
#Fix README.md
remove_file "README.rdoc"
create_file "readme.adoc"
 
#Initialize local Git repository and Initial Commit
git :init
git add: "."
git commit: "-a -m 'Initial commit'"

 
# create remote repo on Github and push
if yes?("Create repo on Github?  \033[33m(y/n)\033[0m") 
  run "curl -u '#{ENV['GITHUB_USER']}' https://api.github.com/user/repos -d '{\"name\":\"#{app_path}\"}'"
  git remote: "add origin git@github.com:#{ENV['GITHUB_USER']}/#{app_path}.git"
  git push: "origin master"
end
 
run "echo 'Voila! Have (a lot of) fun' "

