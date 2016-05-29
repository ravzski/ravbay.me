source 'https://rubygems.org'


gem 'rails', '4.2.4'
gem 'sass-rails', '~> 4.0.3'
gem 'uglifier', '>= 1.3.0'
gem 'coffee-rails', '~> 4.0.0'
gem 'jbuilder', '~> 2.0'
gem 'slim-rails'
gem 'bcrypt'
gem 'sqlite3'
gem 'oj'
gem 'multi_json'
gem 'aws-sdk', '< 2.0'
gem 'angular-rails-templates','0.1.3'
gem 'factory_girl_rails'

group :production do
  gem 'thin'
end

group :development, :test do
  gem 'api_matchers'
  gem 'pry-rails'
  gem 'capistrano'
  gem 'capistrano-bundler'
  gem 'capistrano-rails'
  gem 'capistrano-rvm'
  gem 'capistrano-thin'
  gem 'capistrano-sidekiq'
  gem 'letter_opener'
end

group :test do
  gem 'codeclimate-test-reporter', require: nil
  gem 'simplecov', require:  false
  gem 'rspec-rails'
  gem 'database_cleaner'
  gem 'fuubar'
end
