require "sinatra/base"
require "./lib/computer.rb"

class RockPaperScissors < Sinatra::Base
  enable :sessions

  get "/test" do
    "test page"
  end

  get "/" do
    erb(:index)
  end

  post "/name" do
    session[:player_name] = params[:player_name]
    redirect "/play"
  end

  get "/play" do
    @player_name = session[:player_name]
    erb(:play)
  end

  post "/move" do
    session[:move] = params[:move]
    redirect "/outcome"
  end

  get "/outcome" do
    @move = session[:move]
    @player_name = session[:player_name]
    computer = Computer.new
    @computer_turn = computer.random_turn
    erb(:outcome)
  end

  run! if app_file == $0
end
