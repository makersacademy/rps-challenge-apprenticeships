require 'sinatra/base'
require './lib/player'
require './lib/game'
class RockPaperScissors < Sinatra::Base
  get '/test' do
    'test page'
  end

  get '/home' do
    erb :home
  end

  post '/play' do
    player = Player.new(params[:name])
    opponent = Player.new("Opponent")
    $game = Game.new(player, opponent)
    redirect '/play'
  end

  get '/play' do
    @game = $game
    erb :play
  end

  post '/result' do
    @game = $game
    @player = @game.player_one
    @game.player_one.move_made(params[:move])
    @opponent = @game.player_two
    @opponent.move_made(@opponent.available_move.sample)
    redirect '/result'
  end

  get '/result' do
    @game = $game
    @player = @game.player_one
    @opponent = @game.player_two
    @game.who_won(@game.player_one.move, @game.player_two.move)
    @winner = @game.print_winner
    erb :result
  end

  run! if app_file == $0
end
