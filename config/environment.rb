ENV['SINATRA_ENV'] ||= "development"
require 'bundler/setup'

Bundler.require(:default, ENV['SINATRA_ENV'])
ActiveRecord::Base.logger = Logger.new(STDOUT)
ActiveRecord::Base.establish_connection(ENV['DATABASE_URL'] || 'postgres://localhost/mydb')

require_all 'app'
