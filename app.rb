require 'sinatra/base'
class RockPaperScissors < Sinatra::Base
  enable :sessions
  get '/' do
    erb :homepage
  end

  post '/log_name' do
    session[:player_name] = params[:player_name]
    redirect '/play'
  end

  get '/play' do
    @player_name = session[:player_name]
    erb :play
  end

  post '/selection' do
    player_weapon = params[:weapon]
    computer_weapon = ["Rock", "Paper", "Scissors"].sample
    @result = battle(player_weapon, computer_weapon)
    erb :selection
  end

  def battle(player_weapon, computer_weapon)
    if player_weapon == "Rock" && computer_weapon == "Scissors"
      "You Win!"
    elsif player_weapon == "Scissors" && computer_weapon == "Rock"
      "You Lose!"
    elsif player_weapon == "Scissors" && computer_weapon == "Paper"
      "You Win!"
    elsif player_weapon == "Paper" && computer_weapon == "Scissors"
      "You Lose!"
    elsif player_weapon == "Paper" && computer_weapon == "Rock"
      "You Win!"
    elsif player_weapon == "Rock" && computer_weapon == "Paper"
      "You Lose!"
    else
      "It's a tie!"
    end
  end

  run! if app_file == $0
end
