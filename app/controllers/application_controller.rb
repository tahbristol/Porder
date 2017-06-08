require './config/environment'
class ApplicationController < Sinatra::Base

  register Sinatra::Reloader
 use Rack::Flash

  configure do
    enable :sessions
    set :session_secret, "my_application_secret"
    set :public_folder, Proc.new{File.join(root,"../public")}
    set :views, 'app/views'
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
