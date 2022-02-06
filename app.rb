require 'sinatra/base'
require './lib/winner'

class RockPaperScissors < Sinatra::Base

  enable :sessions

  get '/' do
    erb :index
  end

  get '/test' do
    'test page'
  end

  post '/name' do
    session[:player_name] = params[:player_name]
    redirect '/play'
  end

  get '/play' do
    @player_name = session[:player_name]
    erb :play
  end

  post '/battle' do
    @player_name = session[:player_name]
    @player_choice = params[:button1] || params[:button2] || params[:button3]
    @cpu_choice = ["Rock", "Paper", "Scissors"].sample
    @battle = Winner.new(@player_choice, @cpu_choice)
    # @battle.convert_player
    # @battle.convert_cpu
    # @battle.score
    erb :battle
  end

  run! if app_file == $0

end
