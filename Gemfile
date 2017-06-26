source "https://rubygems.org"


gem 'sinatra'

gem 'nokogiri'
gem 'rake'
gem 'activerecord', :require => 'active_record'
gem 'sinatra-activerecord', :require => 'sinatra/activerecord'
gem 'bcrypt'
gem 'sinatra-contrib', :require => 'sinatra/reloader'
gem 'require_all'

gem 'rack-flash3', :require => 'rack-flash'

gem 'thin'
gem 'pg'
group :production do

end

group :development do
  gem 'tux'
  gem 'pry'
gem 'sqlite3'

end
group :test do
  gem 'rspec'
  gem 'capybara'
  gem 'rack-test'
  gem 'database_cleaner', git: 'https://github.com/bmabey/database_cleaner.git'


end
