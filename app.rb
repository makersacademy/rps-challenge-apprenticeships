require 'sinatra/base'
require './lib/player'
require './lib/game'

class RockPaperScissors < Sinatra::Base
  before do
    @game = Game.instance
  end

  get '/test' do
    'test page'
  end

  get '/' do
    erb(:index)
  end

  post '/add_name' do
    player1 = Player.new(params[:player1_name])
    player2 = Player.new("Computer")
    @game = Game.create(player1, player2)
    redirect '/play'
  end

  get '/play' do
    erb(:play)
  end

  run! if app_file == $0
end
