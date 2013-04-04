source 'https://rubygems.org'

#RoR dependecies
gem 'rails', '3.2.13'
gem 'sqlite3'

# Gems used only for assets and not required
# in production environments by default.
group :assets do
  gem 'sass-rails'
  gem 'coffee-rails'

  # See https://github.com/sstephenson/execjs#readme for more supported runtimes
  gem 'therubyracer', :platforms => :ruby

  gem 'uglifier', '>= 1.0.3'
end

gem 'jquery-rails'
#RoR dependecies end

group :development, :test do
  gem "rspec-rails"
  gem "shoulda-matchers"
  gem "factory_girl_rails"
  gem 'simplecov', :require => false
  gem 'rake'
end

group :cucumber do
  gem 'capybara'
  gem 'database_cleaner'
  gem 'cucumber-rails'
  gem 'cucumber'
  gem 'spork'
  gem 'launchy'
end

gem 'devise', '~> 2.1.0'
gem 'money-rails', '~> 0.3.1'