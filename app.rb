require 'sinatra/base'

class RockPaperScissors < Sinatra::Base

  get '/' do
    erb(:index)
  end

  get '/test' do
    'test page'
  end

  post '/game' do
    @name = params[:name]
    erb(:game)
  end

  post '/result' do
    @user_choice = params[:choice]
    @opponent_choice = [:rock, :paper, :scissors].sample
    @result = pick_winner(@user_choice, @opponent_choice)
    erb(:result)
  end

  def pick_winner(player, opponent)
    case player
    when "rock"
      if(opponent == :scissors)
        return "You win!"
      elsif(opponent == :rock)
        return "It's a tie!"
      else
        return "You lose :("
      end
    when "paper"
      if(opponent == :rock)
        return "You win!"
      elsif(opponent == :paper)
        return "It's a tie!"
      else
        return "You lose :("
      end
    when "scissors"
      if(opponent == :paper)
        return "You win!"
      elsif(opponent == :scissors)
        return "It's a tie!"
      else
        return "You lose :("
      end
    else
      return "Invalid input."
    end
  end

  run! if app_file == $0
end