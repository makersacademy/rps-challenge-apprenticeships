require 'sinatra/base'
require_relative 'lib/player.rb'
require_relative 'lib/game.rb'

class RockPaperScissors < Sinatra::Base

  get '/' do
    erb :index
  end

  post '/names' do
    @player = Player.new(params[:player_name])
    @game = Game.create(@player)
    erb :choice
  end

  post '/play' do
    @game = Game.instance
    @choice = @game.player.choose(params[:name])
    p @game.winner
    erb :winner
  end

   run! if app_file == $0
end
