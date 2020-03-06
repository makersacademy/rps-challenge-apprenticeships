require 'sinatra/base'
require_relative 'lib/player.rb'
require_relative 'lib/game.rb'

class RockPaperScissors < Sinatra::Base
  attr_reader :player_1
  get '/' do
    erb :index
  end

  post '/names' do
    @player = Player.new(params[:player_name])
    erb :choice
  end

  # get '/choice' do
  #   @player = player_1
  #   erb :choice
  # end

   run! if app_file == $0
end
