source 'https://rubygems.org'

#RoR 3.2.3 dependecies
gem 'rails', '3.2.5'
gem 'sqlite3'

# Gems used only for assets and not required
# in production environments by default.
group :assets do
  gem 'sass-rails',   '~> 3.2.3'
  gem 'coffee-rails', '~> 3.2.1'

  # See https://github.com/sstephenson/execjs#readme for more supported runtimes
  gem 'therubyracer', :platforms => :ruby

  gem 'uglifier', '>= 1.0.3'
end

gem 'jquery-rails'
#RoR 3.2.3 dependecies end

group :development, :test do
  gem "rspec-rails", "~> 2.10"
  gem "shoulda-matchers", "~>1.1.0"
  gem "factory_girl_rails", "~> 3.3.0"
  gem 'simplecov', '~> 0.6.4', :require => false 
end

group :cucumber do
  gem 'capybara', '~> 1.1.2'
  gem 'database_cleaner', '~> 0.7.2'
  gem 'cucumber-rails', '~> 1.3.0'
  gem 'cucumber', '~> 1.2.0'
  gem 'spork', '~> 0.9.1'
  gem 'launchy', '~> 2.1.0'
end

group :test do
  #gem 'simplecov', '~> 0.6.4', :require => false
  gem 'rake', '~> 0.9.2.2'
end

gem 'devise', '~> 2.1.0'
gem 'money-rails', '~> 0.3.1'
