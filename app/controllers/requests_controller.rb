class RequestsController < ApplicationController



  get '/requests'do
  
    erb :'requests/index'
  end


end
