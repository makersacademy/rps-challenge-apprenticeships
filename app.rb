require 'sinatra/base'
require 'sinatra/reloader'

class RockPaperScissors < Sinatra::Base
  set :sessions, true
  configure :development do
    register Sinatra::Reloader
  end
  get '/' do
   "hey"
  end

  post '/names' do
    $player1 = Player.new(params[:Player1])
    $player2 = Player.new(params[:Player2])
    redirect '/play'
  end

  get '/play' do
    @player1 = $player1.name
    @player2 = $player1.name
    erb :play
  end

 
    run! if app_file == $0
  
end
