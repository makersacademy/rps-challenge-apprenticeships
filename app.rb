require 'sinatra/base'
require './lib/game'
require './lib/player'

class RockPaperScissors < Sinatra::Base
  enable :sessions 
  get '/test' do
    'test page'
  end

  get '/' do
    erb :index
  end

  post '/name' do
    session[:name] = Player.new(params[:player_name])
    redirect '/play'
  end

  get '/play' do
    @player_name = session[:name].player_name
    erb :play
  end

  post '/choice' do
    session[:choice] = params[:choice]
    redirect '/result'
  end

  get '/result' do
    @player_name = session[:name].player_name
    @player_hand = session[:choice]
    game = Game.new
    @computer_hand = game.random_hand
    @result = game.play(@player_hand, @computer_hand)
    erb :result
  end

  run! if app_file == $0
end
