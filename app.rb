require 'sinatra/base'
require_relative './lib/player.rb'
require_relative './lib/choice.rb'
require_relative './lib/game.rb'

class RockPaperScissors < Sinatra::Base
  get '/test' do
    'test page'
  end

  get '/' do 
    erb :index
  end 

  post "/name" do 
    $round_1 = Game.new((params[:username]))
    redirect '/game'
  end 

  post '/choice' do 
    #put the choice as an attribute of one of the players.
    $round_1.players[0].choice((params[:choice]))
    cpu = Player.new("CPU")
    cpu.choice
    $round_1.players << cpu
    p "****************************************"
    p $round_1
    p "****************************************"
    redirect '/result'
  end

  get '/result' do 
    @result = $round_1.calculate_winner($round_1.players[0], $round_1.players[1])
    erb :result
  end 

  get '/game' do 
    $Game
    erb :game   
  end 

  run! if app_file == $0
end
