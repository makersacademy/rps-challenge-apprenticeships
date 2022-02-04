require 'sinatra/base'
require 'sinatra/reloader'
class RockPaperScissors < Sinatra::Base
  
  get '/' do
    #"Enter your name!"
    erb(:index)
  end



  run! if app_file == $0
end
