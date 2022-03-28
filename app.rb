require 'sinatra/base'
require 'sinatra/reloader'
require_relative 'lib/game'

class RockPaperScissors < Sinatra::Base
  enable :sessions
  get '/' do
    erb :index
  end

  post '/name' do
    session[:player_name] = params[:player_name]
    redirect '/play'
  end

  get '/play' do
    @player_name = session[:player_name]
    erb :move
  end

  post '/choice' do
    $player_choice = Game.new(params[:choice])

    redirect '/result'
  end

  get '/result' do
    # @winner = "player"
    @result = $player_choice.result
    @player_name = session[:player_name]
    if @result == 'player wins'
      # @winner = "#{@player_name} wins"
      erb :player_wins
    elsif @result == 'comp wins'
      # @winner = "Computer wins"
      erb :computer_wins
    else
      # @winner == "It was a draw"
      erb :draw
    end
    # erb :result
  end
  get '/test' do
    'test page'
  end

  
  run! if app_file == $0
end
