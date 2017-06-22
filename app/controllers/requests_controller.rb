class RequestsController < ApplicationController



  get '/requests'do
    if logged_in?(session)
      @user = User.find_by_id(session[:user_id])
      erb :'requests/index'
    else
      redirect to'/signup'
    end
  end

  get '/requests/new'do
    if logged_in?(session)
      erb :'/requests/new'
    else
      redirect to '/login'
    end
  end

  get '/requests/:slug/show'do
    @user = User.find_by_slug(params[:slug])
    @requests = @user.requests
    erb :'/requests/show'
  end

  ################################################

  post '/new'do
  @user = User.find_by_id(session[:user_id])
      params[:request].each do |request|
      @user.requests.build(item: request[:item], vendor: request[:vendor], quantity: request[:quantity], price: request[:price], url: request[:url])
      @user.save
    end
    redirect to "/requests/#{@user.slug}/show"

  end

  post '/requests/delete'do
      @user = User.find_by_id(session[:user_id])

    params[:request][:request_ids].each do |request|
      request = Request.find_by_id(request)
      request.destroy
    end
    redirect to "/requests/#{@user.slug}/show"
end


end
