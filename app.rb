require 'sinatra/base'
require_relative 'lib/player.rb'
require_relative 'lib/game.rb'

class RockPaperScissors < Sinatra::Base

  get '/' do
    erb :index
  end

  post '/names' do
    player_1 = params[:player_name]
  end

   run! if app_file == $0
end
