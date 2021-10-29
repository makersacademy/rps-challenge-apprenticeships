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
    @name = params[:player1]
    erb :index 
  end 

  post '/play' do 
    @name = params[:player1]
    erb :game
  end 

  post '/game' do
    @choice = params[:rock]
     @winner = PlayGame.new(params[:rock])
    erb :result
  end 

  run! if app_file == $0
end