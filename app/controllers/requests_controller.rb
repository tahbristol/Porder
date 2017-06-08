class RequestsController < ApplicationController



  get '/requests'do

    erb :'requests/index'
  end

  get '/requests/:slug/show'do
      @user = User.find_by_slug(params[:slug])
      @requests = @user.requests
      erb :'/requests/show'
  end

end
