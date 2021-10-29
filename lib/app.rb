require 'sinatra/base'
require 'sinatra/reloader'
require_relative "./game"
require_relative "./random_player"

class RockPaperScissors < Sinatra::Base
  configure :development do
    register Sinatra::Reloader
  end

  get '/test' do 
    'test page'
  end 

  get '/' do 
  erb :index 
  end 
  run! if app_file == $0
end