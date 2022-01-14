require 'sinatra/base'
require './lib/rps_game'

class RockPaperScissors < Sinatra::Base
  
  enable :sessions
  
  get '/' do
    erb(:index)
  end

  post '/sign_in' do
    session[:player1] = params[:player1]
    session[:player2] = params[:player2]
    redirect '/play'
  end

  get '/play' do
    session[:game] = create_game
    redirect 'player_1_choice'
  end

  get '/player_1_choice' do
    @game = session[:game]
    erb(:turn1)
  end

  post '/player_1_choice' do
    @game = session[:game]
    session[:player_1_choice] = params[:player_1_choice]
    redirect '/player_2_choice' if @game.player2 != 'Computer'
    redirect '/winner'
  end

  get '/player_2_choice' do
    @game = session[:game]
    erb(:turn2)
  end

  post '/player_2_choice' do
    session[:player_2_choice] = params[:player_2_choice]
    redirect '/winner'
  end

  get '/winner' do
    @winner_message = define_winner
    @winner_message += " won" unless @winner_message == 'Draw'
    erb(:winner)
  end

  run! if app_file == $0

  private

  def create_game
    @player1 = session[:player1]
    @player2 = session[:player2]
    return RPSGame.new(@player1) if @player2.empty?
    return RPSGame.new(@player1, @player2)
  end

  def define_winner
    @game = session[:game]
    player_1_choice = session[:player_1_choice]
    return @game.play(player_1_choice) if @game.player2 == 'Computer'
    
    player_2_choice = session[:player_2_choice]
    return @game.play(player_1_choice, player_2_choice)
  end

end
