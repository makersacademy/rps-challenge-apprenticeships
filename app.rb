require 'sinatra/base'
require_relative './lib/player'
require_relative './lib/computer'
class RockPaperScissors < Sinatra::Base
  enable :sessions

  get '/' do
    erb(:index)
  end

  get '/instructions' do
    erb(:instructions)
  end

  get '/single-player' do
    erb(:single_player)
  end

  post '/name' do
    session[:player] = Player.new(params[:player])
    redirect '/single-player-game'
  end

  get '/single-player-game' do
    @player = session[:player]
    erb(:single_player_game)
  end

  get '/gameresult' do
    @player = session[:player]
    @computer_choice = Computer.new.random_character
    @result = Game.new(params[:choice], @computer_choice).play
  end
  
  run! if app_file == $0
end
