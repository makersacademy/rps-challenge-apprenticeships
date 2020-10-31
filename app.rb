require 'sinatra/base'
require_relative './lib/player.rb'
require_relative './lib/game.rb'

class RockPaperScissors < Sinatra::Base
  get '/' do
    erb :index
  end

  post '/names' do
    $game = Game.new(Player.new(params[:name]))
    redirect '/play'
  end

  get '/play' do
    erb :play
  end

  post '/game' do
    $game.player.choice= (params[:action]).downcase.to_sym
    erb :result
  end


  run! if app_file == $0
end
