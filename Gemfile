# frozen_string_literal: true

source 'https://rubygems.org'

gem 'dotenv-rails'
gem 'mysql2', '>= 0.3.18', '< 0.5'
gem 'puma', '~> 3.7'
gem 'rails', '~> 5.1.0.rc1'
gem 'sass-rails', github: 'rails/sass-rails'
gem 'slim-rails'
gem 'uglifier', '>= 1.3.0'
# gem 'therubyracer', platforms: :ruby

gem 'jbuilder', '~> 2.5'
gem 'turbolinks', '~> 5'

group :development, :test do
  gem 'byebug', platforms: %i[mri mingw x64_mingw]
  gem 'factory_girl_rails'
  gem 'faker'
  gem 'listen'
  gem 'pry-byebug'
  gem 'pry-rails'
  gem 'rspec-core', git: 'https://github.com/rspec/rspec-core.git', branch: 'master'
  gem 'rspec-expectations', git: 'https://github.com/rspec/rspec-expectations.git', branch: 'master'
  gem 'rspec-mocks', git: 'https://github.com/rspec/rspec-mocks.git', branch: 'master'
  gem 'rspec-rails', git: 'https://github.com/rspec/rspec-rails.git', branch: 'master'
  gem 'rspec-support', git: 'https://github.com/rspec/rspec-support.git', branch: 'master'
  gem 'rubocop', '0.52.1', require: false
end

group :development do
  gem 'bullet'
  gem 'capistrano'
  gem 'capistrano-bundler'
  gem 'capistrano-rails'
  gem 'capistrano-rbenv'
  gem 'capistrano3-unicorn'
  gem 'spring'
  gem 'web-console', '>= 3.3.0'
end
