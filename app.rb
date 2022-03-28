require 'sinatra/base'
require 'capybara'
require 'capybara/rspec'
require 'rspec'
require './lib/player'
require './lib/game'


class RockPaperScissors < Sinatra::Base
  enable :sessions
  get '/test' do
    'test page'
  end

  get '/' do
    $game = Game.new
    erb :index
  end

  post '/name_input' do
    $player = Player.new(params[:player_name])
    redirect '/play'
  end

  get '/play' do
    @player_name = $player.name
    erb :play
  end

  get '/choice' do
    erb :choice
  end

  post '/choice_form' do
    $player.choice = params[:RPS]
    redirect '/outcome'
  end

  get '/outcome' do
    @player_name = $player.name
    @player_choice = $player.choice
    $computer_choice = $game.cpu_choice
    $winner = $game.find_winner($player, $game)
    erb :outcome
  end

  run! if app_file == $0
end
