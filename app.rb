require_relative 'config/environment'

class App < Sinatra::Base
  configure do 
    enable :sessions
    secret "My amazing cat"
  end 
end