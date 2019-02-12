require_relative 'config/environment'

class App < Sinatra::Base
  configure do
    enable :sessions
    set :session_secret, "My amazing cat"
  end

  get "/" do
    erb :"index"
    @session = session
  end

  post "/checkout" do
    item = params[:item]

  end
end
