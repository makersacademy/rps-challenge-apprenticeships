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
    # session[:username] = params[:name]
    $player = Player.new(params[:name])
    redirect "/play"
  end

  get "/play" do
    # @name = session[:username]
    @name = $player.name
    erb(:play)
  end

  post "/victory" do
    # session[:choice] = params[:choice]
    $user_choice = params[:choice]
    $player.selection($user_choice)
    redirect "/result"
  end

  get "/result" do
    # @choice = session[:choice]
    @choice = $user_choice
    $computer = Computer.new
    @computer_choice = $computer.generate_choice
    $game = Game.new($player, $computer)
    @game_result = $game.result(@choice, @computer_choice)
    erb(:result)
  end

  run! if app_file == $0
end
