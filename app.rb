require 'sinatra/base'
require 'sinatra/reloader'
require './lib/player'

class RockPaperScissors < Sinatra::Base
  get '/test' do
    'test page'
  end

  get '/' do
    erb :index
  end

  post '/play' do
    @player = Player.new(params[:player_name])
    @game = Game.new(@player)
    erb :play
  end

  run! if app_file == $0
end
