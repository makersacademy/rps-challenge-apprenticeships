# This is the controller of the RPS programme
require 'sinatra/base'
class RockPaperScissors < Sinatra::Base
   run! if app_file == $0

   get '/' do
    erb :index
   end 
end
