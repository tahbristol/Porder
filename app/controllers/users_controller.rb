class UsersController < ApplicationController



  get '/users'do
    erb :'/users/index'
  end

  get '/signup'do
    if logged_in?(session)
      @user = User.find_by_id(session[:user_id])
      redirect to '/users/#{@user.slug}'
    else
      erb :'/users/signup'
    end
  end

  get '/users/:slug'do
    if logged_in?(session)
      @user = User.find_by_slug(params[:slug])
      erb :'/users/show'
    else
      redirect to '/signup'
    end
  end

  get '/login'do
    erb :'/users/login'
  end





  ############################################


  post '/signup'do
    if params[:password] == params[:password_confirm]
      @user = User.create(name: params[:name], email: params[:email], password: params[:password])
      session[:user_id] = @user.id
      redirect to "/users/#{@user.slug}"
    else
      flash[:message] = "Passwords do not match."
      redirect to "/signup"

    end
  end


  post '/login' do
    @user = User.find_by(email: params[:email])
    if @user && @user.authenticate(params[:password])
      session[:user_id] = @user.id
      redirect to "/users/#{@user.slug}"
    else
      flash[:message] = "Those credentails are not found in our system."
      redirect to '/login'
    end
  end


  post '/logout'do
    session.clear
    redirect to '/login'
  end














end
