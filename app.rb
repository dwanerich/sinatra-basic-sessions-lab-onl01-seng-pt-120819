require_relative 'config/environment'

class App < Sinatra::Base
  
  configure do
  enable :sessions
  set :session_secret, "lowkey"
end
  
  
  get '/' do
    
    erb :index
  end
  
  post '/checkout' do
    params
    @session = params
  end
end