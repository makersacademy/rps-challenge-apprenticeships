require 'sinatra/base'
class RockPaperScissors < Sinatra::Base
  get '/test' do
    'test page'
  end

  get '/' do
    erb :index
  end

  post '/names' do
    @player_1_name = params[:player_1_name]
    @player_2_name = "Computer"
    # Player 2 will be introduced once the game is multiplayer
    # @player_2_name = params[:player_2_name]
    erb :play
  end

  get '/begin' do
    erb :begin
  end

  get '/rock' do
    comp_choice
    erb :rock
  end

  get '/paper' do
    comp_choice
    erb :paper
  end

  get '/scissors' do
    comp_choice
    erb :scissors
  end

  def comp_choice
    @comp_choice = ["Rock", "Paper", "Scissors"].sample
  end

  run! if app_file == $0
end
