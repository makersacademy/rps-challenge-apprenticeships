require 'sinatra/base'
require './lib/player.rb'
require './lib/game.rb'

class RockPaperScissors < Sinatra::Base
  get '/test' do
    'test page'
  end

  get '/' do
    erb :index
  end

  post '/player' do
    player = Player.new(params[:name])
    $game = Game.new(player)
    redirect to('/game')
  end

  post '/choice' do
    "You entered: #{params[:choice]}\nComputer entered: Paper\nComputer wins!"
  end

  get '/game' do
    @name = $game.player.name
    erb :game
  end

  run! if app_file == $0
end
