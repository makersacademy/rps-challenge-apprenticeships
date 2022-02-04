require 'sinatra/base'
require 'sinatra/reloader'
require './lib/player'
require './lib/game'

class RockPaperScissors < Sinatra::Base
  configure :development do
    register Sinatra::Reloader
  end

  get '/test' do
    'test page'
  end

  get '/' do
    erb(:index)
  end

  post '/play' do
    player = Player.new(params[:player_name])
    $game = Game.new(player)
    @game = $game
    erb(:play)
  end

  post '/whowon' do
    @choice = params[:choice]
    @game = $game
    erb(:whowon)
  end

  run! if app_file == $0
end
