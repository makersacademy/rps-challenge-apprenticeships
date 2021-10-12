require 'sinatra/base'
require './lib/play'

class RockPaperScissors < Sinatra::Base
  enable :sessions
  get '/test' do
    'test page'
  end

  get '/' do
    erb :index
  end

  post '/names' do
    session[:player_1_name] = params[:player_1_name]
    redirect '/play'
  end

  get '/play' do
    @player_1_name = session[:player_1_name]
    @player_1_selection = session[:player_1_selection]
    @computer_selection = session[:computer_selection]
    @result = session[:result]
    erb :play
  end

  post '/selection' do
    session[:player_1_selection] = params[:selection]
    play = Play.new
    computer_move = play.computer
    session[:computer_selection] = computer_move
    session[:result] = play.play(session[:player_1_selection], computer_move)

    redirect '/play'
  end

  run! if app_file == $0
end
