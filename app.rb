require 'sinatra/base'
require 'sinatra/reloader'
require_relative './lib/game'

class RockPaperScissors < Sinatra::Base
  get '/test' do
    'test page'
  end
  attr_reader :player_choice, :game, :game_choice, :score
  enable :sessions

  get '/' do
    erb :index
  end

  post '/name' do
    session[:player_name] = params[:player_name]
    redirect '/play'
  end

  get '/play' do
    @player_name = session[:player_name]
    erb :play
  end

  post '/player_choice' do
    session[:player_choice] = params[:player_choice]
    redirect '/outcome'
  end

  get '/outcome' do
    @player_name = session[:player_name]
    @player_choice = session[:player_choice]
    @game = Game.new
    @game_choice = @game.choices
    score_calc
    erb :outcome
  end

  def score_calc
    if (@player_choice == 'Rock' && @game_choice == 'Scissors') || (@player_choice == 'Paper' && @game_choice == 'Rock') || (@player_choice == 'Scissors' && @game_choice == 'Paper')
      @score = 1
    elsif (@game_choice == 'Rock' && @player_choice == 'Scissors') || (@game_choice == 'Paper' && @player_choice == 'Rock') || (@game_choice == 'Scissors' && @player_choice == 'Paper')
      @score = 0
    end
  end

  run! if app_file == $0
end
