require 'sinatra/base'
require_relative 'lib/computer_choice.rb'
class RockPaperScissors < Sinatra::Base
  enable :sessions
  get '/' do
    erb :index
  end

  post '/name' do
    session[:player_1_name] = params[:player_1_name]
    redirect '/play'
  end

  get '/play' do
    @player_1_name = session[:player_1_name]
    erb :play
  end

  post '/select' do
    session[:selection] = params[:selection]
    redirect '/result'
  end

  get '/result' do
    @selection = session[:selection]
    @player_1_name = session[:player_1_name]
    erb :result
  end

  run! if app_file == $0
end
