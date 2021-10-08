require "sinatra/base"
require "sinatra/reloader"
require_relative "./computer"
require_relative "./player"
require_relative "./game"

class RockPaperScissors < Sinatra::Base
  use Rack::Session::Cookie

  configure :development do
    register Sinatra::Reloader
  end

  enable :sessions

  get "/" do
    erb(:index)
  end

  post "/name-info" do
    player = Player.new(params[:name])
    computer = Computer.new
    $game = Game.new(player, computer)
    redirect "/play"
  end

  get "/play" do
    @game = $game
    @name = @game.player.name
    erb(:play)
  end

  post "/victory" do
    session[:choice] = params[:choice]
    @game = $game
    @game.player.selection(session[:choice])
    redirect "/result"
  end

  get "/result" do
    @player_choice = session[:choice]
    @game = $game
    @computer_choice = @game.computer.generate_choice
    @game_result = @game.result(@player_choice, @computer_choice)
    erb(:result)
  end

  run! if app_file == $0
end
