require 'sinatra/base'
require 'sinatra/reloader'
require_relative './lib/player'
require_relative './lib/gameresult'

class RockPaperScissors < Sinatra::Base
  enable :sessions
  register Sinatra::Reloader

  get '/' do
        
    erb :index

  end
  
  post "/names" do
    p params
      session["twoplayer"] = params["twoplayer"]
    p session
    $Player1 = Player.new(params[:name1])
    $Player2 = Player.new(params[:name2])
    $Game = Gameresult.new
    redirect "/game"
  end

  get "/game" do
   
    #@twoplayer = session["twoplayer"]
    
    @player1 = $Player1
    @player2 = $Player2
    @game = $Game
    erb :play

  end  

  post "/play" do
    $Game.reset
    $Player1.reset
    $Player2.reset

    if session["twoplayer"] == "false" && params[:p1] || session["twoplayer"] == "true" && params[:p1] && params[:p2]
      $Player1.decision(params[:p1])
      params[:p2] ?  $Player2.decision(params[:p2]) : ($Player2.rand)
      #$Player2.rand
      $Game.calculate($Player1, $Player2) 
    end
    
    redirect "/game"

  end

  run! if app_file == $0
end
