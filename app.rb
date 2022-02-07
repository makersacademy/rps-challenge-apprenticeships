require 'sinatra/base'
require 'sinatra/reloader'
require './lib/player'
require './lib/game'

class RockPaperScissors < Sinatra::Base
  
  game = Game.new

  get '/test' do
    'test page'
  end

  get '/' do
    erb :index
  end

  post '/names' do
    $player = Player.new(params[:username])
    redirect '/game'
  end

  get '/game' do
    redirect '/' unless $player
    @player_name = $player.name
    @result = $result
    @cmpchoice = game.cmpchoice
    @userchoice = game.userchoice
    erb :game
  end

  post '/run' do
    $result = game.run(params[:choice])
    redirect '/game'
  end

  run! if app_file == $0
end
