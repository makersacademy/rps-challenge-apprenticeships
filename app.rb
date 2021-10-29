require 'sinatra/base'
class RockPaperScissors < Sinatra::Base
require 'sinatra/reloader' if development?
require_relative 'model/players'

  get '/' do
    erb :index
  end

  get '/register' do 
    erb :register
  end 

  post '/solo' do 
    @solo = true 
    @multiplayer = false
    erb :register
  end 

  post '/multiplayer' do 
    @solo = false 
    @multiplayer = true 
    erb :register
  end 

  get '/players' do 
    players = [params[:player1_name],params[:player2_name]]
    @players = Players.new(players)
    erb :game
  end 

  get '/player' do 
    player = params[:player1_name]
    @player = Players.new(player)
    erb :game
  end 

  run! if app_file == $0
end
