# frozen_string_literal: true

source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '3.0.0'

# Bundle edge Rails instead: gem "rails", github: "rails/rails", branch: "main"
gem 'rails', '~> 7.0.2', '>= 7.0.2.3'

# gem for authorization
gem 'pundit'
# gem for pagination
gem 'pagy'
# gem for authentication
gem 'devise', '~> 4.8', '>= 4.8.1'
# The original asset pipeline for Rails [https://github.com/rails/sprockets-rails]
gem 'sprockets-rails'
# Use postgresql as the database for Active Record
gem 'pg', '~> 1.1'
# Use the Puma web server [https://github.com/puma/puma]
gem 'puma', '~> 5.0'
# use for embedding bootstrap
gem 'bootstrap', '~> 5.1', '>= 5.1.3'
# use to detect dead code

# Use JavaScript with ESM import maps [https://github.com/rails/importmap-rails]
gem 'dotenv-rails'
gem 'importmap-rails'
gem 'omniauth-google-oauth2'
gem 'omniauth-rails_csrf_protection'
# gem for beautify form
gem 'htmlbeautifier', '~> 1.4', '>= 1.4.2'

# Hotwire's SPA-like page accelerator [https://turbo.hotwired.dev]
gem 'pry'
gem 'turbo-rails'
gem 'vanilla_nested', '~> 1.6', '>= 1.6.1'
# Hotwire's modest JavaScript framework [https://stimulus.hotwired.dev]
gem 'stimulus-rails'
# Build JSON APIs with ease [https://github.com/rails/jbuilder]
gem 'jbuilder'
gem 'sendinblue'
# Use Redis adapter to run Action Cable in production
gem 'redis', '~> 4.0'
# Use for search action
gem 'ransack'
# Use Kredis to get higher-level data types in Redis [https://github.com/rails/kredis]
# gem "kredis"

# Use Active Model has_secure_password [https://guides.rubyonrails.org/active_model_basics.html#securepassword]
# gem "bcrypt", "~> 3.1.7"

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: %i[mingw mswin x64_mingw jruby]

# Reduces boot times through caching; required in config/boot.rb
gem 'bootsnap', require: false
# controller testing
gem 'rails-controller-testing'
# Use Sass to process CSS
gem 'sassc-rails'

# Use Active Storage variants [https://guides.rubyonrails.org/active_storage_overview.html#transforming-images]
# gem "image_processing", "~> 1.2"
# Image uploader gem
gem 'carrierwave'
gem 'mini_magick'
group :development, :test do
  gem 'factory_bot_rails'
  gem 'faker'
  gem 'rspec-rails'
  gem 'rubocop', require: false
  gem 'rubocop-performance', require: false
  gem 'rubocop-rails', require: false
  # See https://guides.rubyonrails.org/debugging_rails_applications.html#debugging-with-the-debug-gem
  gem 'debug', platforms: %i[mri mingw x64_mingw]
end

group :development do
  # Use console on exceptions pages [https://github.com/rails/web-console]
  gem 'web-console'
  # bullet gem

  # Add speed badges [https://github.com/MiniProfiler/rack-mini-profiler]
  # gem "rack-mini-profiler"

  # Speed up commands on slow machines / big apps [https://github.com/rails/spring]
  # gem "spring"
end
gem 'bullet'

group :test do
  # Use system testing [https://guides.rubyonrails.org/testing.html#system-testing]
  gem 'capybara'
  gem 'selenium-webdriver'
  gem 'shoulda-matchers', '~> 5.0'
  gem 'webdrivers'
end
gem 'grover'
gem 'noticed', '~> 1.5'
