source "https://rubygems.org"
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby "2.7.0"

gem "rails", "~> 7.0.1"
gem "sprockets-rails"
gem "faker", "~> 2.19"
gem "sqlite3", "~> 1.4"
gem 'jsonapi.rb'
gem "typhoeus"
gem "puma", "~> 5.0"
gem 'haml', '~> 5.2', '>= 5.2.2'
gem "importmap-rails"
gem "rswag"
gem "turbo-rails"
gem "stimulus-rails"
gem "jbuilder"
gem "tzinfo-data", platforms: %i[ mingw mswin x64_mingw jruby ]
gem "bootsnap", require: false
gem "rspec-rails"
gem "rswag-specs"

group :development, :test do
  gem "debug", platforms: %i[ mri mingw x64_mingw ]
end

group :development do
  gem "web-console"
end

group :test do
  gem "capybara"
  gem "selenium-webdriver"
  gem "webdrivers"
end
