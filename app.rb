require 'sinatra/base'
require 'sinatra/reloader'
require './lib/game'
require './lib/player'

class RockPaperScissors < Sinatra::Base

  configure :development do
    register Sinatra::Reloader
  end

  get '/' do
    erb(:index)
  end

  post '/players' do
    p params
    @player_one = Player.new(params[:player_one_name], params[:player_one_CPU])
    @player_two = Player.new(params[:player_two_name], params[:player_two_CPU])
    @spock_game = params[:spock_game]
    $game = Game.new(@player_one, @player_two, @spock_game)
    if $game.spock_game?
      redirect '/spock-moves'
    else
      redirect '/moves'
    end
  end

  get '/moves' do
    if $game.current_turn.robot?
      $game.current_turn.computer_move
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
    $game.switch_turn
    if $game.current_turn.move.nil?
      redirect '/moves'
    else
      redirect '/result'
    end
  end

  get '/spock-moves' do
    if $game.current_turn.robot?
      $game.current_turn.spock_move
      redirect '/next-move'
    else
      erb(:spock_moves)
    end
  end

  get '/next-spock-move' do
    $game.switch_turn
    if $game.current_turn.move.nil?
      redirect '/spock-moves'
    else
      redirect '/result'
    end
  end

  get '/result' do
    $game.outcome($game.player_one, $game.player_two)
    erb(:result)
  end

  post '/play-again' do
    p params
    $game.spock_update(params[:spock_game])
    $game.player_one.reset_move
    $game.player_two.reset_move
    if $game.spock_game?
      redirect '/spock-moves'
    else
      redirect '/moves'
    end
  end

  get '/test' do
    'test page'
  end

  run! if app_file == $0
end
