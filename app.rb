require 'sinatra/base'
require './lib/Player'
class RockPaperScissors < Sinatra::Base

enable :sessions

      get "/" do
          erb(:index)
      end

      post '/names' do
        $player_1 = Player.new(params[:player_1_name])
        $player_2 = Player.new("Computer")
        redirect '/game'
      end

      get "/game" do
        @player_1_points = session[:player_1_points]
        @player_2_points = session[:player_2_points]
        session[:player_1_points] = 0
        session[:player_2_points] = 0
        @player_1_name = $player_1.name
        @player_2_name = $player_2.name
        @player_1_choice = $player_1c
        if @player_1_choice
        @player_2_choice =["rock", "paper", "scissors"].sample
      end
        if (@player_1_choice == "rock" && @player_2_choice == "rock" ||
          @player_1_choice == "paper" && @player_2_choice == "paper" ||
          @player_1_choice == "scissors" && @player_2_choice == "scissors")
          @result = "Draw!"
        elsif (@player_1_choice == "rock" && @player_2_choice == "scissors" ||
          @player_1_choice == "paper" && @player_2_choice == "rock" ||
          @player_1_choice == "scissors" && @player_2_choice == "paper")
          @result = @player_1_name + " wins!"
          @player_1_points += 1
        elsif (@player_2_choice == "rock" && @player_1_choice == "scissors" ||
          @player_2_choice == "paper" && @player_1_choice == "rock" ||
          @player_2_choice == "scissors" && @player_1_choice == "paper")
          @result = @player_2_name + " wins!"
          @player_2_points += 1
  end

        erb(:game)

    end




      post "/choice" do
       $player_1c = params[:user_choice]
      redirect '/game'
      end




  run! if app_file == $0
end
