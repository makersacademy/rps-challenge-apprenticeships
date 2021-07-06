require 'sinatra/base'
require './lib/computer.rb'
require './lib/game.rb'
require './lib/player.rb'

class RockPaperScissors < Sinatra::Base
  enable :sessions
  get '/test' do
    'test page'
  end
  get '/' do
    erb :index
  end
  post '/names' do
    session[:player]= params[:player]
    redirect '/game'
  end
  get '/game' do
    @player = session[:player]
    erb :game
  end
  get '/rock' do
    @player_picked = 'Rock'
    @computer = Computer.new
    @computer_picked = @computer.computer_pick
    @result= Game.new
    @winner = @result.result(@computer_picked, @player_picked)
    erb :rock_picked
  end

  run! if app_file == $0
end
