require './config/environment'
require 'rack-flash'
require 'pony'
class ApplicationController < Sinatra::Base

  register Sinatra::Reloader


  configure do
    enable :sessions
    set :session_secret, "my_application_secret"
    set :public_folder, Proc.new{File.join(root,"../../public")}
    set :views, 'app/views'
  end

  get '/' do
    erb :index
  end


  helpers do
    def logged_in?(session)
      !!session[:user_id]
    end

    def current_user
      User.find_by_id(session[:user_id])
    end
  end


end
