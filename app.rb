require "sinatra/base"
require_relative "./lib/game"

class RockPaperScissors < Sinatra::Base
  enable :sessions

  get '/test' do
    'test page'
  end

  get "/" do
    erb(:index)
  end

  post "/welcome" do
    session[:player_name] = params[:player_name]
    redirect to("/play")
  end

  get "/play" do
    @player_name = session[:player_name]
    erb(:play)
  end

  post "/selection" do
    $game = Game.new(params[:weapon])
    redirect to("/result")
  end

  get "/result" do
    $game.play
    erb(:result)
  end
  

  run! if app_file == $0
end
