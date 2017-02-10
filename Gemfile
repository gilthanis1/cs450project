source 'https://rubygems.org'

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?("/")
  "https://github.com/#{repo_name}.git"
end

# Ruby version
ruby '2.3.3'
# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails',                   '5.0.0.1'
gem 'bcrypt',                  '3.1.11'
gem 'faker',                   '1.6.6'
gem 'carrierwave',             '0.11.2'
gem 'mini_magick',             '4.5.1'
gem 'fog',                     '1.38.0'
gem 'will_paginate',           '3.1.0'
gem 'bootstrap-will_paginate', '0.0.10'
gem 'bootstrap-sass',          '3.3.6'
# Use postgresql as the database for Active Record
gem 'pg',               '0.19'
# Setup needed files for Heroku deployment
gem 'rails_12factor', group: :production
# Use Puma as the app server
gem 'puma',             '3.6.0'
# Use SCSS for stylesheets
gem 'sass-rails',       '5.0.6'
# Use Uglifier as compressor for JavaScript assets
gem 'uglifier',         '3.0.3'
# Use CoffeeScript for .coffee assets and views
gem 'coffee-rails',     '4.2.1'
# See https://github.com/rails/execjs#readme for more supported runtimes
# gem 'therubyracer', platforms: :ruby

# Use with CarrierWave and AWS
gem 'figaro'

#Use Devise for user signup, login, authentication, sessions, etc
gem 'devise'

# Use jquery as the JavaScript library
gem 'jquery-rails',     '4.2.1'
# Turbolinks makes navigating your web application faster. 
gem 'turbolinks',       '5.0.1'
# Build JSON APIs with ease. 
gem 'jbuilder',         '2.6.0'

# Use Redis adapter to run Action Cable in production
# gem 'redis', '~> 3.0'

# Use Capistrano for deployment
# gem 'capistrano-rails', group: :development

group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug', '9.0.6', platform: :mri
end

group :development do
  # Access an IRB console on exception pages or by using <%= console %> anywhere in the code.
  gem 'web-console',           '3.4.0'
  gem 'listen',                '3.0.8'
  # Spring speeds up development by keeping your application running in the background.
  gem 'spring',                '2.0.0'
  gem 'spring-watcher-listen', '2.0.1'
end

group :test do
  gem 'rails-controller-testing', '0.1.1'
  gem 'minitest-reporters',       '1.1.9'
  gem 'guard',                    '2.13.0'
  gem 'guard-minitest',           '2.4.4'
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]