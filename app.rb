require 'sinatra/base'
require './lib/player'
# require "sinatra/reloader" if development?
class RockPaperScissors < Sinatra::Base

  enable :sessions
  
  # get '/test' do
  #   'test page'
  # end

  get '/' do
    erb(:index)
  end

  post '/submit-name' do
    session["player_name"] = params["player_name"]
    erb(:results)
  end

  # get '/results' do
  #   @player_name = session["player_name"]

  #   erb(:results)
  # end

  get '/rock' do
    player = Player.new
    $pc_plays = player.pc_plays
    $player_plays = "rock"
    $result = player.rock
    erb(:rock)
  end

  get '/paper' do
    player = Player.new
    $pc_plays = player.pc_plays
    $player_plays = "paper"
    $result = player.paper
    erb(:rock)
  end

  get '/scissors' do
    player = Player.new
    $pc_plays = player.pc_plays
    $player_plays = "scissors"
    $result = player.scissors
    erb(:rock)
  end

  run! if app_file == $0

end
