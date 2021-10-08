require 'sinatra/base'
require 'sinatra/reloader'
require './lib/opponent'
require './lib/game'

class RockPaperScissors < Sinatra::Base
  get '/' do
    erb :index
  end

  post '/result' do
    # should this be lowercase or capitalize?
    # if i dont capitalize, something breaks, reviewer pls
    @name = params[:name].capitalize
    @player_hand = params[:choice]
    @computer_hand = Opponent.new.computer_hand
    @winner = Game.new.winner(@player_hand.downcase.to_sym, @computer_hand.downcase.to_sym)
    erb :result
  end

  run! if app_file == $0
end
