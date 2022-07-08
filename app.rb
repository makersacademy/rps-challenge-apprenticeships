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
    'You chose rock'
    player = Player.new
    $pc_plays = player.pc_plays
    erb(:rock)
  end

  get '/paper' do
    "you chose paper"
    # erb(:paper)
  end

  get '/scissors' do
    "you chose scissors"
    # erb(:scissors)
  end

  run! if app_file == $0

end
