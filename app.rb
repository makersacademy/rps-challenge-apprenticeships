require 'sinatra/base'
require './lib/rps_game'
require './lib/computer_choice'
class RockPaperScissors < Sinatra::Base
  enable :sessions

  get '/' do
    erb :index
  end

  # the below get/posts are for the single player experience

  post '/name' do
    session[:name] = params[:name]
    redirect '/game'
  end

  get '/game' do
    @name = session[:name]
    erb :game
  end

  post '/choice' do
    session[:choice] = params[:weapon]
    redirect '/result'
  end

  get '/result' do
    @choice = session[:choice]
    @computer_choice = ComputerChoice.new.choice
    @result = RPSGame.new(@choice, @computer_choice).result
    erb :result
  end

  post '/play_again' do
    @name = session[:name]
    redirect '/game'
  end

  run! if app_file == $0
end
