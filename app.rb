require 'sinatra/base'
require './lib/game'

class RockPaperScissors < Sinatra::Base

  get '/' do
    erb(:challenge_index)
  end

  post '/player'do
    @player = params[:name]
    erb(:player_form)
  end

  post '/result'do
    choice = params[:choice]
    game = Game.new(choice)
    @result = game.play
  end






    run! if app_file == $0
end

