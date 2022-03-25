require 'sinatra/base'
require_relative 'lib/player'
require_relative 'lib/game'

class RockPaperScissors < Sinatra::Base
  enable :sessions

  get '/test' do
    'test page'
  end

  get '/' do
    erb :index
  end

  get '/names' do
    $player_one = Player.new(params[:player_one])
    $player_two = Player.new(params[:player_two])
    redirect to('/play')
  end
  
  get '/pvp-names' do
    erb :pvp_names
  end

  get '/vs-ai-name' do
    erb :vs_ai_name
  end

  get '/play' do
    @player_one = $player_one
    @player_two = $player_two

    if @player_two.name == 'computer'
      erb :play
    else
      erb :pvp_play
    end
  end

  get '/result' do
    @player_one = $player_one
    @player_one.choose(params)
    @game = Game.new(@player_one)
    @result = @game.run_vs_ai
    erb :result
  end

  run! if app_file == $0
end
