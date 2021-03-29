require 'sinatra/base'
require './lib/player'
require './lib/computer'
require './lib/game'

class RockPaperScissors < Sinatra::Base
  enable :sessions

  get '/test' do 
    'this is a test page'
  end 

  get '/' do
    erb(:index)
  end 

  post '/names' do 
    session[:player_one_name] = Player.new(params[:player_one_name])
    redirect '/play'
  end

  get '/play' do 
    @player_one_name = session[:player_one_name].name
    session[:move] = params[:move]
    erb(:play)
  end

  post '/move' do 
    @player_one_name = session[:player_one_name].name
    session[:move] = Player.new(params[:player_one_name]).player_move(params[:move])
    redirect '/result'
  end 

  get '/result' do 
    @player_one_name = session[:player_one_name].name
    @move = session[:move]
    @computer_move = Computer.new.computer_move
    @result = Game.new(@move, @computer_move).result
    erb(:result)
  end 

  get '/play_again' do
    redirect '/play'
  end 

  run! if app_file == $0
end
