require 'sinatra/base'
require './lib/player.rb'
require './lib/game.rb'
require './lib/cpu.rb'

class RockPaperScissors < Sinatra::Base
  enable :sessions
  get '/' do
    erb :index
  end

  post '/choices' do
    @player_name = params[:player_name]
    @choice = params[:choice]
    @cpu = Cpu.new
    @cpu.choose
    # redirect '/results'
    erb :choices
  end

  post '/results' do
    @player_name = Player.new
    @game = Game.new
    @game.results
    erb :results
  end

  run! if app_file == $0
end
