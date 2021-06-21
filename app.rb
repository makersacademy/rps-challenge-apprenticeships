require 'sinatra/base'
require './lib/player.rb'
require './lib/game.rb'
require './lib/opponent.rb'

class RockPaperScissors < Sinatra::Base
  enable :sessions
  
  get '/' do
    'test page'
    erb :index
  end

  post '/name' do
    session[:player] = Player.new(params[:name])
    redirect '/startgame'
  end

  get '/startgame' do
    @player = session[:player] 
    erb :start_game
  end

  post '/choices' do
    player = session[:player] 
    opponent = Opponent.new

    @choice = params[:choice]
    player_choice = player.make_choice(@choice)

    session[:game] = Game.new(player, opponent)
    session[:result] = session[:game].result

    redirect '/result'
  end

  get '/result' do
    @game = session[:game]
    @result = session[:result]
    erb :result
  end

  run! if app_file == $0
end
