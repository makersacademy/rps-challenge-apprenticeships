require 'sinatra/base'
require "sinatra/reloader"
require './lib/game.rb'

class RockPaperScissors < Sinatra::Base

  get '/' do
    # @name = params[:name]
    erb :index
  end

  get '/class' do
    $game = Game.new
    redirect '/player'
  end

  post '/player' do
    @player_name = params[:player]
    @intro = $game.present
    erb :player
  end

  get '/move' do
    # @move = params[:move]
    # erb :move
    @move = $game.submit_move(params[:move])
    @result = $game.winner
    erb :player_move
  end

  run! if app_file == $0
end
