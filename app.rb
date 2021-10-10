require 'sinatra/base'
require_relative "./lib/game.rb"

class RockPaperScissors < Sinatra::Base
  get '/test' do
    'test page'
  end

  get "/" do
    erb(:index)
  end

  post "/play" do
    Game.new(params[:name])
    redirect("/play")
  end

  get "/play" do
    @name = Game.current_game.name
    erb(:play)
  end

  post "/turn" do
    Game.current_game.user_turn(params[:button].to_sym)
    redirect("/turn")
    
  end

  get "/turn" do
    @name = Game.current_game.name()
    @player_choice = Game.current_game.user_choice()
    @bot_choice = Game.current_game.bot_turn()
    
    Game.current_game.declare_winner()
    @winner = Game.current_game.winner()
    @loser = Game.current_game.loser()
    @draw = Game.current_game.draw()
    return erb(:turn)
  end

  run! if app_file == $0
end
