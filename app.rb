require 'sinatra/base'
require 'sinatra/reloader'
require './lib/computer_opponent'
require './lib/game'

class RockPaperScissors < Sinatra::Base
  register Sinatra::Reloader

  get '/' do
    erb :index
  end

  post '/result' do
    @name = params[:name].capitalize
    @player_choice = params[:choice]
    @computer_choice = ComputerOpponent.new.computer_choice
    @winner = Game.new.winner(@player_choice.downcase.to_sym, @computer_choice.downcase.to_sym)
    erb :result
  end


  run! if app_file == $0
end
