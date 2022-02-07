require 'sinatra/base'
require './lib/game'

class RockPaperScissors < Sinatra::Base

  get '/' do
    erb :index
  end

  post '/name' do
    @player_name = params[:player_name]
    # $game = Game.new(player)
    # @game = $game
    erb :play
  end


  # get '/test' do
  #   'test page'
  # end

  run! if app_file == $0
end
