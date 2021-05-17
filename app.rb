require './lib/rockpaperscissors.rb'
require 'sinatra'
require 'sinatra/base'
require 'sinatra/reloader' if development?

class RockPaperScissors < Sinatra::Base
  get '/test' do
    'test page'
  end

  get '/' do
    erb(:home)
  end

  post '/playerchoice' do
    $name = params[:name]
    @name = $name
    erb(:playerchoice)
  end

  post '/endgame' do
    @game = Game.new(params[:player_choice])
    @game.computer_move
    @game.run
    @player_choice = params[:player_choice]
    @name = $name
    erb(:endgame)
  end

  run! if app_file == $0
end
