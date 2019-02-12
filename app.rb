require_relative 'config/environment'

class App < Sinatra::Base
  configure do
    enable :sessiona
    set :session_secret, "My amazing cat"
  end

  get "/" do
    binding.pry
    @session = session
    erb :"index"
  end

  post "/checkout" do
    binding.pry
    item = params["item"]
    @session[:item] = item
  end

end
