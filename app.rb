require 'sinatra/base'
require './lib/player.rb'
class RockPaperScissors < Sinatra::Base
  enable :sessions
  
  get '/' do
    'test page'
    erb :index
  end

  post '/name' do
    $player = Player.new(params[:name])
    redirect '/startgame'
  end

  get '/startgame' do
    @player = $player
    erb :start_game
  end

  run! if app_file == $0
end
