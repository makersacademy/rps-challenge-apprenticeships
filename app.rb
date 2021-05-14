require 'sinatra/base'
require_relative 'lib/player.rb'
require_relative 'lib/game.rb'
class RockPaperScissors < Sinatra::Base
  enable :sessions
  get '/test' do
    'test page'
  end

  get '/' do
    erb :index
  end

  get '/play' do
    @player_1_name = $player_1.name
    erb :play
  end

  get '/rock' do
    erb :rock

  end

  get '/paper' do
    erb :paper
  end

  get '/scissors' do
    erb :scissors
  end

  post '/names' do
    $player_1 = Player.new(params[:player_1_name])
    redirect '/play'
  end

  run! if app_file == $0
end
