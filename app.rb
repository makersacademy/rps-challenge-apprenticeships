require 'sinatra/base'
class RockPaperScissors < Sinatra::Base
  get '/' do
    # p params
    # @random_name = params[:name]
    erb(:index)
  end

  get '/' do
    erb(:index)
  end

  post '/' do
    p params
    @player_name = params[:name]
    p @player_name
    @player_move = params[:move]
    p @player_move
    erb(:index)
  end

  run! if app_file == $0
end



