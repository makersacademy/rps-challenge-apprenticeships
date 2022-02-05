require 'sinatra/base'
class RockPaperScissors < Sinatra::Base
  get '/test' do
    'test page'
  end

  get '/' do
    erb :index
  end

  post '/' do
    @marketeer_name = params[:marketeer_name]
    erb :play
  end
 
  post '/option' do
    player_choice = params[:choice]
    computer_choice = ["Rock", "Paper","Scissors"].sample
    @marketeer_name = params[:marketeer_name]

    if player_choice == computer_choice
      @result = "It's a draw"
    elsif player_choice== "rock" && computer_choice == "scissors"
      @result = "#{@marketeer_name} wins"
    elsif player_choice == "rock" && computer_choice == "paper"
      @result = "Computer wins"
    elsif player_choice == "paper" && computer_choice == "rock"
      @result = "#{@marketeer_name} wins"
    elsif player_choice == "paper" && computer_choice == "scissors"
      @result = "Computer wins"
    elsif player_choice == "scissors" && computer_choice == "rock"
      @result = "Computer wins"
    else
      @result = "#{@marketeer_name} wins"
    end

    erb :winner
  end

  run! if app_file == $0
end
