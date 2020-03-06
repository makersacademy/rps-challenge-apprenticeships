require 'sinatra/base'
require_relative './computer.rb'

class RockPaperScissors < Sinatra::Base
	enable :sessions
  get '/' do
    erb :index
  end

  get '/form' do
  	erb :form
  end

  post '/add_player' do
  	session[:player_name] = params[:name]
  	redirect '/play' 
  end

  get '/play' do 
  	@player_name = session[:player_name]
  	erb :play
  end

  post '/play' do
  	computer = Computer.new
  	session[:player_move] = params[:player_move]
  	session[:computer_move] = computer.random_move
  	@player_name = session[:player_name]
  	@player_move = session[:player_move]
  	@computer_move = session[:computer_move]
  	@winner = computer.the_winner_is(@player_name, @player_move, 'Computer', @computer_move)
    @color = computer.winner_color(@winner)
  	erb :play
  end

   run! if app_file == $0
end
