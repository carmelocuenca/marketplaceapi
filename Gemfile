source 'https://rubygems.org'

ruby '2.2.4'
#ruby-gemset=market_place_api

# Bundle edge Rails instead: gem 'rails', gihub: 'rails/rails'
gem 'rails', '4.0.6'

# Use sqlite3 as the database for Active Record
group :test, :development do
  gem 'sqlite3'
end

# Use SCSS for stylesheets
gem 'sass-rails', '~> 4.0.2'

# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'

# Use CoffeeScript for .js.coffee assets and views
gem 'coffee-rails', '~> 4.0.0'

# See https://github.com/sstephenson/execjs#readme for more supported runtimes
# gem 'therubyracer', platforms: :ruby

# Use jquery as the JavaScript library
gem 'jquery-rails'

group :doc do
  # bundle exec rake doc:rails generates the API under doc/api.
  gem 'sdoc', require: false
end


# Api gems
# After several hours: 0.10.0 version does not work properly
gem 'active_model_serializers', '0.8.0'


group :production do
  gem 'rails_12factor'
  gem 'pg'
end

group :test do
  gem 'test-unit' # ???
  gem "shoulda-matchers"
end

group :development, :test do
  gem "factory_girl_rails"
  gem 'ffaker'
end

group :test do
  gem "rspec-rails"
  gem "email_spec"
end

gem 'devise'
gem 'ransack'
gem 'kaminari'
gem 'delayed_job_active_record'

# Sabisu integration
gem 'sabisu_rails'
gem 'compass-rails', '1.1.7'
gem 'furatto'
gem 'font-awesome-rails'
gem 'simple_form'

# Use ActiveModel has_secure_password
# gem 'bcrypt', '~> 3.1.7'

# Use unicorn as the app server
# gem 'unicorn'

# Use Capistrano for deployment
# gem 'capistrano', group: :development

# Use debugger
# gem 'debugger', group: [:development, :test]
