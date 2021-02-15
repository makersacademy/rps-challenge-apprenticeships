require 'sinatra/base'


class RockPaperScissors < Sinatra::Base




  def battle 
    ruby_result = ["Rock", "Paper", "Scissors"].sample
  end


  def winner(ruby,player)
  if ruby == "Rock" && player == "Paper"
    "You Lose"
  elsif ruby == "Paper" && player == "Paper"
    "Draw"
  elsif ruby == "Scissors" && player == "Paper"
    "You Lose"  
  elsif ruby == "Rock" && player == "Scissors"
    "You Lose"
  elsif ruby == "Paper" && player == "Paper"
    "Draw"
  elsif ruby == "Scissors" && player == "Rock"
    "You win"
  end
  end


  get '/' do
    erb :index
  end

  post '/name' do
    @player_1 = params[:player_1_name]
    erb :play
  end

  post '/play' do
    @answer = params[:user_answer]
    erb :result
  end

run! if app_file == $0

end


