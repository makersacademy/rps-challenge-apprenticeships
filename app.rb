require 'sinatra/base'
require_relative "lib/game.rb"

class RockPaperScissors < Sinatra::Base
  
  get '/' do
    erb(:view1)
  end

  get '/game' do
    p "from /game name param #{params}"
    @@name = params[:user_name]
    erb(:view2)
  
  end

  get '/results' do
    @move = params[:move]
    game = Game.new(@@name, @move)
    game.random_turn
    game.concat
    @winnermessage = game.process_player_inputs
    erb(:view3)
  end
  run! if app_file == $0
end
