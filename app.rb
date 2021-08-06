require 'sinatra/base'
require_relative 'lib/winner_decider.rb'

class RockPaperScissors < Sinatra::Base
  enable :sessions
  
  get '/test' do
    erb(:test)
  end

  get '/' do
    erb(:index)
  end

  get '/enter_name' do 
    erb(:enter_name)
  end

  post '/name' do
    session[:player_1_name] = params[:player_1_name]
    redirect '/player_1_move'
  end

  get '/player_1_move' do
    @player_1_name = session[:player_1_name]
    erb(:player_1_move)
  end

  post '/winner' do
    session[:player_1_move] = params[:player_1_move]
    @player_1_move = session[:player_1_move]
    @player_1_name = session[:player_1_name]
    erb(:winner)
  end

  run! if app_file == $0
end
