require 'sinatra/base'
require 'sinatra/reloader'
require_relative './lib/player'

class RockPaperScissors < Sinatra::Base
  enable :sessions
  register Sinatra::Reloader

  get '/' do
        
    erb :index

  end
  
  post "/names" do
    
    $Player1 = Player.new(params[:name1])
    $Player2 = Player.new(params[:name2])
    redirect "/game"
  end

  get "/game" do
    p "games route"

    @player1 = $Player1
    @player2 = $Player2
    erb :play

  end  

  post "/play" do

    p params
    $Player1.decision(params[:p1])
    params[:p2] ?  $Player2.decision(params[:p2]) : ($Player2.rand)
    redirect "/game"

  end

  run! if app_file == $0
end
