#marlon

require 'sinatra/base'
class RockPaperScissors < Sinatra::Base

  get '/' do
    erb(:index)
  end

  post '/' do
    @player_name = params["name"]
    @player_move = params["move"]
    p params
    p @player_move
    erb(:index)
  end

  run! if app_file == $0
end