require_relative 'config/environment'

class App < Sinatra::Base
  
  
  get '/hey' do 
    @session = session
  end
  configure do
    enable :sessions
    set :session_secret, "secret"
  end
end