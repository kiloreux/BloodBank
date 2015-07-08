source 'https://rubygems.org'
ruby '2.2.2'
gem 'rails', '4.2.3'
gem 'pg'
gem 'sass-rails', '~> 5.0'
gem 'uglifier', '>= 1.3.0'
gem 'coffee-rails', '~> 4.1.0'
gem 'jquery-rails'
gem 'turbolinks'
gem 'jbuilder', '~> 2.0'
gem 'sdoc', '~> 0.4.0', :group => :doc
gem 'puma'
gem 'cucumber-rails', :require => false
gem 'coveralls' , require: false
gem 'faker'
gem 'rspec-rails', :group => [:test, :development]
gem 'codeclimate-test-reporter', group: :test, require: nil
gem 'figaro'

group :test do
  gem 'factory_girl_rails'
  gem 'shoulda-matchers'
  gem 'capybara'
  gem 'database_cleaner'
  gem 'guard-rspec'
end


group :development, :test do
  gem 'byebug'
  gem 'web-console', '~> 2.0'
  gem 'better_errors'
  gem 'binding_of_caller'
  gem 'meta_request'
  gem 'spring'
end


group :production do
  gem 'rails_12factor'
end