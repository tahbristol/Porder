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

  get '/requests/cancel'do
  if logged_in?(session)
    @user = User.find_by_id(session[:user_id])
    @requests = @user.requests
    erb :'/requests/show'
  else
    redirect to '/login'
  end
end

  get '/requests/:slug/show'do
    if logged_in?(session)
    @user = User.find_by_slug(params[:slug])
    @requests = @user.requests
    erb :'/requests/show'
  else
    redirect to '/login'
  end

  end

  get '/requests/edit'do
    if logged_in?(session)
    @user = User.find_by_id(session[:user_id])
    @requests = @user.requests
    erb :'/requests/edit'
  else
    redirect to '/login'
  end

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

        if !params[:request]
          redirect to "/requests/#{@user.slug}/show"
        else
    params[:request][:request_ids].each do |request|
      request = Request.find_by_id(request)
      request.destroy
    end
  end
    redirect to "/requests/#{@user.slug}/show"
   end

   post '/requests/edit'do
    @user = User.find_by_id(session[:user_id])

    if !!params[:request]
      params[:request].each do |request|

        edit_request = Request.find_by_id(request[:id])
        edit_request.item = request[:item] unless request[:item].empty?
        edit_request.vendor =  request[:vendor] unless request[:vendor].empty?
        edit_request.quantity =  request[:quantity] unless request[:quantity].empty?
        edit_request.price =  request[:price] unless request[:price].empty?
        edit_request.url = request[:url] unless request[:url].empty?
        edit_request.save
      end
    end
      redirect to "/requests/#{@user.slug}/show"
   end

end
