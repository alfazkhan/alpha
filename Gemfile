source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '2.5.3'

gem 'will_paginate' , '3.1.5'
gem 'bootstrap-will_paginate' , '1.0.0'

gem 'sinatra', '>= 0'
gem 'haml', '>= 0'
gem 'json', '>=0'

gem 'rails', '~> 5.2.2'
gem 'bcrypt', '~> 3.1.7'
gem 'puma', '~> 3.11'

gem 'jquery-rails'
gem 'bootstrap-sass', '~> 3.3.7'
gem 'sass-rails', '~> 5.0'

gem 'uglifier', '>= 1.3.0'

gem 'duktape'

gem 'coffee-rails', '~> 4.2'

gem 'turbolinks', '~> 5'

gem 'jbuilder', '~> 2.5'

gem 'bootsnap', '>= 1.1.0', require: false



group :development, :test do
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
  gem 'mysql2', '>= 0.4.4', '< 0.6.0'
end

group :development do
  gem 'web-console', '>= 3.3.0'
end

group :test do
  gem 'capybara', '>= 2.15'
  gem 'selenium-webdriver'
  #gem 'rails-controller-testing'
  gem 'chromedriver-helper', '1.2.0'
end

group :production do
  gem 'pg'
  gem 'rails_12factor'
end

gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
