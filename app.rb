require 'sinatra/base'
require './lib/Player'
require './lib/play_game'
class RockPaperScissors < Sinatra::Base

  use Rack::Session::Cookie, :key => 'rack.session', :path => '/', :secret => 'abcd'

  get '/' do
    erb(:index)
  end

  post '/names' do
    $player_1 = Player.new(params[:player_1_name], :player_1_points)
    $player_2 = Player.new("Computer", :player_2_points)
    p session[:player_1_points] = $player_1.score
    p session[:player_2_points] = $player_2.score
    redirect '/game'
  end

  post '/choice' do
    $player_1c = params[:user_choice]
    redirect '/game'
  end

  get '/game' do
    @player_1_name = $player_1.name
    @player_2_name = $player_2.name
    play_game
    erb(:game)
  end

  run! if app_file == $0
end
