require 'sinatra/base'
require 'sinatra/reloader'
require './lib/game'
require './lib/player'

class RockPaperScissors < Sinatra::Base
  enable :sessions

  configure :development do
    register Sinatra::Reloader
  end

  get '/' do
    erb(:index)
  end

  post '/players' do
    p params
    p @player_one = Player.new(params[:player_one_name], params[:player_one_CPU])
    p @player_two = Player.new(params[:player_two_name], params[:player_two_CPU])
    $game = Game.new(@player_one, @player_two)
    redirect '/moves'
  end

  get '/moves' do
    @game = $game
    if @game.current_turn.robot?
      redirect '/next-move'
    else
      erb(:moves)
    end
  end

  post '/choice' do
    p params
    $game.current_turn.select_move(params[:select_move])
    redirect '/next-move'
  end

  get '/next-move' do
    if $game.current_turn.robot?
      $game.current_turn.computer_move
    end
    $game.switch_turn
    if $game.current_turn.move.nil?
      redirect '/moves'
    else
      redirect '/result'
    end
  end

  get '/result' do
    $game.outcome($game.player_one, $game.player_two)
    erb(:result)
  end

  get '/play-again' do
    $game.player_one.reset_move
    $game.player_two.reset_move
    redirect '/moves'
  end

  get '/test' do
    'test page'
  end

  run! if app_file == $0
end
