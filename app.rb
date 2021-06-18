require 'sinatra/base'
require_relative 'paper'
require_relative 'scissors'
require_relative 'rock'
class RockPaperScissors < Sinatra::Base
  enable :sessions

  def initialize
  @possible_moves = { 
    "Rock" => Rock,
    "Paper" => Paper,
    "Scissors" => Scissors,
   }
  super()
  end

  get '/test' do
    'test page'
  end

  get '/' do
    erb :index
  end

  get '/play' do
    @player_name = session[:player_name]
    erb :play
  end

  post '/names' do
    session[:player_name] = params[:player_name]
    redirect '/play'
  end

  get '/choice/:player_choice' do
    @player_name = session[:player_name]
    @move = @possible_moves[params["player_choice"]].new
    @random_move = @possible_moves.values.sample(1)[0].new
    if @move > @random_move
      @winner_message = @player_name + "wins"
    elsif @random_move > @move
      @winner_message = "computer wins"
    else @winner_message = "It's a draw!"
    end
      erb :result
  end
 
  run! if app_file == $0
end
