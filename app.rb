require "sinatra"
require "capybara"
require "capybara/rspec"
require "rspec"
require 'sinatra/reloader' if development?

class RockPaperScissors < Sinatra::Base

  enable :sessions

  configure :development do
    register Sinatra::Reloader
  end

  get '/test' do
    'test page'
  end

  get "/" do
    redirect "login"
  end

  get "/login" do
    erb :login
  end

  post "/set_name" do
    session[:player_name] = params[:player_name]
    redirect "game"
  end

  get "/game" do
    @player_name = session[:player_name]
    erb :game
  end

  post "/set_game_choice" do
    session[:player_choice] = params[:player_choice]
    session[:computer_choice] = ["rock", "paper", "scissors"].sample
    redirect :result
  end

  get "/result" do
    @player_choice = session[:player_choice]
    @computer_choice = session[:computer_choice]
    erb :result
  end

  run! if app_file == $0
end
