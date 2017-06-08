class UsersController < ApplicationController



  get '/users'do
    erb :'/users/index'
  end

  get '/signup'do
    erb :'/users/signup'
  end

  get '/users/:id'do
    @user = User.find_by_id(params[:id])
    erb :'/users/show'
  end




############################################


post '/signup'do
  if params[:password] == params[:password_confirm]
    @user = User.create(name: params[:name], email: params[:email], password: params[:password])
    redirect to "/users/#{@user.id}"
  else
    flash[:message] = "Passwords do not match."
    redirect to "/signup"

  end
end













end
