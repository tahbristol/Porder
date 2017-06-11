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
  
=begin
    @user = User.find_by_id(session[:user_id])
    @user.requests.build(item: params[:item], vendor: params[:vendor], quantity: params[:quantity], price: params[:price], url: params[:url])
    @user.save
    redirect to "/requests/#{@user.slug}/show"
=end
  end

end
