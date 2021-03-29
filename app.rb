require 'sinatra/base'
require './lib/random_selection'
require './lib/game'
require './lib/player'

class RockPaperScissors < Sinatra::Base

  get '/test' do
    'test page'
  end

  get '/' do
    erb :index
  end

  post '/players' do
    $player_one = Player.new(params[:player_one_name])
    redirect '/play'
  end

  get '/play' do 
    @player_one_name = $player_one.name
    erb :play
  end

  get '/result' do
    @player_one_name = $player_one.name
    @p1_selection = $player_one.picks(params[:p1_selection])
    $cpu = Player.new("CPU")
    @cpu_name = $cpu.name
    @cpu_selection = $cpu.picks(RandomSelection.new.rps)
    @game = Game.new($player_one, $cpu)
    @message = @game.result
    erb :result
  end

  run! if app_file == $0
end
