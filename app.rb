require 'player'
require 'sinatra/base'
# require 'sinatra/reloader'

class RockPaperScissors < Sinatra::Base
  # configure :development do
  #   register Sinatra::Reloader
  # end
  enable :sessions

  get '/test' do
    'test page'
  end
  get '/' do
    erb :index
  end

  post '/name' do
    $player_1 = Player.new(params[:login_box])
    redirect '/play'
  end

  get '/play' do
    @player1 = $player_1
    @game = Game.new(@player1, Player.new("Computer"))
    erb :play
  end

  run! if app_file == $0
end
