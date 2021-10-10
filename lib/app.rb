require "sinatra/base"
require_relative "./computer"
require_relative "./player"
require_relative "./game"

class RockPaperScissors < Sinatra::Base
  use Rack::Session::Cookie

  enable :sessions
  
  before do
    @game = Game.instance
  end

  get "/" do
    erb(:index)
  end

  post "/name-info" do
    player = Player.new(params[:name])
    computer = Computer.new
    @game = Game.create(player, computer)
    redirect "/play"
  end

  get "/play" do
    @name = @game.player.name
    erb(:play)
  end

  post "/outcome" do
    session[:choice] = params[:choice]
    @game.player.selection(session[:choice])
    redirect "/result"
  end

  get "/result" do
    @player_choice = session[:choice]
    @computer_choice = @game.computer.generate_choice
    @game_result = @game.result(@player_choice, @computer_choice)
    erb(:result)
  end

  run! if app_file == $0
end
