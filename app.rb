require 'sinatra/base'
require_relative 'lib/game'
require_relative 'lib/player'

class RockPaperScissors < Sinatra::Base
  enable :sessions

  get '/' do
    erb :index
  end

  post '/name' do
    session[:player] = Player.new(params[:player_name])
    redirect '/play'
  end

  get '/play' do
    @player = session[:player]
    erb :play
  end

  post '/result' do
    session[:player].set_choice(params[:player_choice])
    session[:computer_choice] = ['rock', 'paper', 'scissors'].sample
    redirect '/result'
  end

  get '/result' do
    @player = session[:player]
    @computer_choice = session[:computer_choice]
    @result = Game.new(@player.choice, @computer_choice).result

    erb :result
  end


  run! if app_file == $0
end
