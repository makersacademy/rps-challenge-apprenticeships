require 'sinatra/base'
require 'sinatra/reloader'
require_relative 'computer_random.rb'

class RockPaperScissors < Sinatra::Base
  configure :development do
    register Sinatra::Reloader
  end
  attr_reader :players_choice, :computers_choice, :computers, :win_lose


  enable :sessions

  get '/test' do
    'test page'
  end

  get '/' do
    erb :index
  end 

  post '/names' do
    session[:player_1_name] = params[:player_1_name]
    redirect '/play'
  end 

  get '/play' do 
    @player_1_name = session[:player_1_name]
    erb :play
  end 

  post '/player_chose' do
    session[:players_choice] = params[:players_choice]
    redirect '/game_outcome'
  end 

  get '/game_outcome' do 
    @player_1_name = session[:player_1_name]
    @players_choice = session[:players_choice]
    @computers = Computer.new
    @computers_choice = @computers.pick_choice
    game_outcome
    erb :outcome
  end 

  def game_outcome
    if (@players_choice == 'Rock' && @computers_choice == 'Rock') || (@players_choice == 'Paper' && @computers_choice == 'Paper') || (@players_choice == 'Scissors' && @computers_choice == 'Scissors')
      @win_lose = 'draw'
    elsif (@players_choice == 'Rock' && @computers_choice == 'Scissors') || (@players_choice == 'Paper' && @computers_choice == 'Rock') || (@players_choice == 'Scissors' && @computers_choice == 'Paper')
      @win_lose = 'win'
    else 
      @win_lose = 'lose'
    end 
  end 

  run! if app_file == $0
end

