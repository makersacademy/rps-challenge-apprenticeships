require 'sinatra/base'
require './lib/rps_game.rb'

class RockPaperScissors < Sinatra::Base
  
  enable :sessions
  
  get '/' do
    erb(:index)
  end

  post '/sign_in' do
    session[:player_1] = params[:player_1]
    session[:player_2] = params[:player_2]
    redirect '/play'
  end

  get '/play' do
    @game = session[:game] = create_game()
    erb(:turn_1)
  end

  post '/player_1_choice' do
    @game = session[:game]
    redirect '/player_2_choice' if @game.player_2 != 'Computer'
    redirect '/winner'
  end

  get '/player_2_choice' do
    @game = session[:game]
    erb(:turn_2)
  end

  post '/player_2_choice' do
    redirect '/winner'      
  end

  get '/winner' do
    'Freddy won'
  end

  run! if app_file == $0

  private

  def create_game()
    @player_1 = session[:player_1]
    @player_2 = session[:player_2]
    return RPSGame.new(@player_1) if @player_2.empty?
    return RPSGame.new(@player_1, @player_2)
  end

end
