require_relative 'config/environment'

class App < Sinatra::Base
  configure do
    enable :session
    set :session_secret, "My amazing cat"
  end

  get "/" do
    @session = session
    erb :"index"
  end

  post "/checkout" do
    binding.pry
    item = params[:item]
    @session[:item] = item
  end

end
