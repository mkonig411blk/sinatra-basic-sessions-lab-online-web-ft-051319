require_relative 'config/environment'

class App < Sinatra::Base
  
  
  get '/' do 
    erb :index
  end
  
  post '/checkout' do 
    @item = params[:item]
   
  end
  configure do
    enable :sessions
    set :session_secret, "secret"
  end
end