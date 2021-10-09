require 'sinatra/base'
require 'sinatra/reloader'
require './lib/player'

class RockPaperScissors < Sinatra::Base
  
  configure :development do
    register Sinatra::Reloader
  end

  get '/' do
    erb :index
  end

  post '/names' do
    $player_1 = Player.new(params[:player_1_name])
    redirect 'select_item'
  end

  get '/select_item' do
    @player_1_name = $player_1.name
    erb :select_item
  end

  post '/item_choice' do
    $chosen_item = Player.new(params[:chosen_item])
    redirect 'play'
  end

  get '/play' do
    erb :play
  end

  run! if app_file == $0
end
