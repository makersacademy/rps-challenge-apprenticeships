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
    @player_1 = session[:player_1]
    @player_2 = session[:player_2]
    if @player_2.empty?
      @game = RPSGame.new(@player_1)
    else
      @game = RPSGame.new(@player_1, @player_2)
    end
    erb(:play)
  end

  run! if app_file == $0
end
