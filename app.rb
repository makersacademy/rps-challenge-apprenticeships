require 'sinatra/base'
require './lib/player'
class RockPaperScissors < Sinatra::Base
  get '/test' do
    'test page'
  end

  get '/' do
    erb :index
  end   

  post '/names' do 
    p params
    $player_1 = Player.new(params[:player_1_name])
    redirect '/play'
  end   

  get '/play' do 
    @player_1 = $player_1.name
    erb :play
  end   

  run! if app_file == $0
end
