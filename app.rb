require 'sinatra/base'
require_relative './lib/player.rb'
require_relative './lib/choice.rb'
require_relative './lib/choice.rb'

class RockPaperScissors < Sinatra::Base
  get '/test' do
    'test page'
  end

  get '/' do 
    erb :index
  end 

  post "/name" do 
    $Round_1 = Game.new(Player.new(params[:username]))
    $Game = [Player.new(params[:username])]
    redirect '/game'
  end 

  post '/choice' do 
    $Game.first.choice((params[:choice]))
    cpu = Player.new("CPU")
    cpu.choice
    $Game << cpu
    redirect '/result'
  end

  get '/result' do 
    $Game << game_1.calculate_winner($Game[0], $Game[1])
    erb :result
  end 

  get '/game' do 
    $Game
    erb :game   
  end 

  run! if app_file == $0
end
