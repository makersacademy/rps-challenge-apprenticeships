require 'sinatra/base'

class RockPaperScissors < Sinatra::Base
  
  get '/' do
    erb :index
  end

  post '/names' do
    @player_1_name = params[:player_1_name]
    erb :play
  end

  post '/option' do
    @player_1_name = params[:player_1_name]
    player_choice = params[:rps]
    computer_choice = ["Rock", "Paper", "Scissors"].sample
  
    if player_choice == computer_choice
      @result = "It's a draw"
    elsif player_choice== "Rock" && computer_choice == "Scissors"
      @result = "#{@player_1_name} wins"
    elsif player_choice == "Rock" && computer_choice == "Paper"
      @result = "Computer wins"
    elsif player_choice == "Paper" && computer_choice == "Rock"
      @result = "#{@player_1_name} wins"
    elsif player_choice == "Paper" && computer_choice == "Scissors"
      @result = "Computer wins"
    elsif player_choice == "Scissors" && computer_choice == "Rock"
      @result = "Computer wins"
    else
      @result = "#{@player_1_name} wins"
    end
    erb :winner
  end

  run! if app_file == $0
end
