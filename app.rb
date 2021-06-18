require 'sinatra/base'
class RockPaperScissors < Sinatra::Base
  enable :sessions

  get '/test' do
    'test page'
  end

  get '/' do
    erb :index
  end

  post '/mode-select' do
    choice = params[:name]
    redirect('/two-player') if choice == "2P"
    redirect('/one-player')
  end

  get '/one-player' do
    session[:player_2] = "Computer"
    erb :singleplayermenu
  end

  post '/name-submit' do
    session[:player_1] = params[:name]
    redirect('/welcome')
  end

  get '/welcome' do
    @player1 = session[:player_1]
    @player2 = session[:player_2]
    erb :welcome_screen
  end

  get '/game' do
    erb :game
  end

  post '/move-submit' do
    session[:player_1_choice] = params[:player_choice]
    redirect('/results')
  end

  get '/results' do
    @player_1 = session[:player_1]
    @player_2 = session[:player_2]
    @player_1_choice = session[:player_1_choice]
    @player_2_choice = "Rock"
    erb :results
  end


  run! if app_file == $0
end
