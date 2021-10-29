require 'sinatra/base'
require_relative 'lib/player.rb'
class RockPaperScissors < Sinatra::Base
  get '/' do
    erb :index
  end

  post '/handle_user_date' do
    $player_name =  Player.new(params[:player_name])
    @player_name = $player_name
    redirect '/play'
  end
  

  get '/play' do
    @player_name = $player_name
    @style = "display:none"
    erb :play
  end

  get '/start' do
    @player_name = $player_name
    @style = "display:block"
    erb :play
  end

  post "/choice" do
    @player_name = $player_name
    erb :game
  end

  run! if app_file == $0
end
