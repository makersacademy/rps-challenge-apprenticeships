require 'sinatra/base'
require_relative 'lib/player.rb'
require_relative 'lib/game.rb'
require_relative 'lib/user_pick.rb'

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
    @handler = User_Pick.new(params[:rock],params[:paper],params[:scissors])
    @game = Game.new(@handler.user_decided)
    erb :game
  end

  post '/start' do
    redirect '/'
  end

  run! if app_file == $0
end
