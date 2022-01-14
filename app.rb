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
    @game = create_game()
    erb(:play)
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
