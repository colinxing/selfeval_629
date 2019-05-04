# source 'https://rubygems.org'

source 'https://rubygems.org'

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?("/")
  "https://github.com/#{repo_name}.git"
end

# ruby '2.3.0'

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '~> 5.1.4'

gem 'haml'
gem 'sdoc', '~> 0.4.0', group: :doc

# Use Puma as the app server
gem 'unicorn'
gem 'puma' #, '~> 3.4'
# Use SCSS for stylesheets
gem 'sass-rails', '5.0.6'
# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '3.2.0'
# See https://github.com/rails/execjs#readme for more supported runtimes
# gem 'therubyracer', platforms: :ruby

# Use CoffeeScript for .coffee assets and views
gem 'coffee-rails', '4.2.2'

# jquery rails
gem 'jquery-rails', '4.3.1'
# Turbolinks makes navigating your web application faster. Read more: https://github.com/turbolinks/turbolinks
gem 'turbolinks', '5.0.1'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '2.7.0'
# Use Redis adapter to run Action Cable in production
# gem 'redis', '~> 3.0'
gem 'devise'
# Use ActiveModel has_secure_password
gem 'bcrypt', '3.1.11'
gem 'bootstrap-sass', '3.3.7'
gem 'carrierwave'
gem 'fog'
gem 'mini_magick', '~> 4.3'
gem 'figaro'

# Use Capistrano for deployment
# gem 'capistrano-rails', group: :development

group :development, :test do
  # Use sqlite3 as the database for Active Record
  gem 'sqlite3', '1.3.13'
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug', '9.0.6', platforms: [:mri, :mingw, :x64_mingw]
  # Adds support for Capybara system testing and selenium driver
  gem 'foreman'
  gem 'capybara', '~> 2.13'
  gem 'selenium-webdriver', '2.53.4'
  gem 'rspec-rails'
  # Use yaml_cb to download database
  gem 'yaml_db'
  # Use carrierwave to upload file
  # gem 'carrierwave'
end

group :development do
    gem 'better_errors'
  gem 'rails_layout'
  gem 'web-console', '~> 2.0'
  gem 'listen',                '3.1.5'
  gem 'spring'
  gem 'spring-watcher-listen', '2.0.1'
end

gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]

group :test do
  gem 'database_cleaner'
  gem 'simplecov', :require => false
  gem 'cucumber-rails', :require => false
  gem 'cucumber-rails-training-wheels'
  gem 'rails-controller-testing'
  gem 'minitest-reporters',       '1.1.14'
  gem 'guard',                    '2.13.0'
  gem 'guard-minitest',           '2.4.4'
  gem 'factory_girl_rails'
end

group :production do
  gem 'pg', '~> 0.18.4' # for Heroku deployment
  #gem 'pg'# for Heroku deployment  
  gem 'rails_12factor'
end

