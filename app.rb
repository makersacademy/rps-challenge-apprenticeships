require 'sinatra/base'
require_relative './lib/game'
require_relative './lib/computer'

class RockPaperScissors < Sinatra::Base
  get '/test' do
    'test page'
  end

  get '/' do
    erb(:index)
  end

  post '/choices' do
    @name = params[:name]
    redirect '/selections'
  end

  get '/selections' do
    erb(:select)
  end

  post '/game' do
    @player_choice = params[:selection]
    computer = Computer.new
    @computer_choice = computer.choice
    game = Game.new(@player_choice, @computer_choice)
    puts game.compare

  end



  run! if app_file == $0
end
