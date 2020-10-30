require 'sinatra/base'
require './lib/Player'
class RockPaperScissors < Sinatra::Base

enable :sessions

      get "/" do
          erb(:index)
      end

      post '/names' do
        $player_1 = Player.new(params[:user_name])
        $player_2 = Player.new("Computer")
        redirect '/game'
      end

      get "/game" do
        @player_1_name = $player_1.name
        @player_2_name = $player_2.name
        session[:player_1_points] = 0
        session[:player_2_points] = 0
        @player_1_points = session[:player_1_points]
        @player_2_points = session[:player_2_points]
        @player_1_choice = $player_1c
        p @player_1_choice

        erb(:game)
      end




      post "/choice" do
       $player_1c = params[:user_choice]
       p $player_1c
      redirect '/game'
      end




  run! if app_file == $0
end
