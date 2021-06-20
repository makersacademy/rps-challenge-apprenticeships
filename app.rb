require "sinatra/base"
require "sinatra/reloader"
require_relative "lib/game"

class RockPaperScissors < Sinatra::Base
  configure :production, :development do
    register Sinatra::Reloader
  end
  $game = Game.new
  $name

  get "/" do
    erb :index
  end
  post "/star-the-game" do
    $name = params[:name]
    @plays = $game.get_plays
    erb :play
  end

  get "/play" do
    user_choice = params[:choice]
    machine_choice = $game.get_rand_choice
    play_result = $game.get_curr_res(user_choice, machine_choice)
    $game.add_play(user_choice, machine_choice, play_result)
    @plays = $game.get_plays
    if $game.get_plays.length == 3
      @score = $game.get_game_result
      $game.restart_game
    end
    erb :play
  end

  run! if app_file == $0
end
