require 'sinatra/base'
require 'sinatra/reloader'
require_relative 'lib/game'

class RockPaperScissors < Sinatra::Base
  configure :test, :development do
    register Sinatra::Reloader
    also_reload 'lib/game'
  end

  enable :sessions

  before do
    @game = Game.get
  end

  get '/' do
    erb :index
  end

  post '/name' do
    session.clear
    session[:player_name] = params[:name]
    session[:wins] = 0
    session[:draws] = 0
    session[:losses] = 0
    redirect '/play'
  end

  get '/play' do
    @player_name = session[:player_name]
    @player_move = session[:player_move]
    @opponent_move = session[:opponent_move]
    @wins = session[:wins]
    @draws = session[:draws]
    @losses = session[:losses]

    erb :play
  end

  post '/move/:move' do
    move = params[:move]

    session[:player_move] = nil
    if @game.valid_move?(move.to_sym)
      game_move = @game.move
      session[:player_move] = move
      session[:opponent_move] = game_move

      if @game.wins_against?(move.to_sym, game_move.to_sym)
        session[:wins] += 1
      elsif @game.draws_against?(move.to_sym, game_move.to_sym)
        session[:draws] += 1
      else
        session[:losses] += 1
      end
    end

    redirect '/play'
  end

  run! if app_file == $0
end
