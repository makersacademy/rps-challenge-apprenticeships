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
    @error = session[:error]
    erb :game
  end

  post "/set_game_choice" do
    session[:player_choice] = params[:player_choice].downcase
    session[:computer_choice] = ["rock", "paper", "scissors"].sample
    session[:error] = false
    redirect :result
  end

  get "/result" do
    @player_choice = session[:player_choice]
    @computer_choice = session[:computer_choice]
    @result = check_result(@player_choice, @computer_choice)
    if @result == "error"
      session[:error] = true
      redirect :game
    end
    erb :result
  end


  def check_result(player_choice, computer_choice)
    return "error" unless ["rock", "paper", "scissors"].include? player_choice
    return "draw" if player_choice == computer_choice
    case player_choice
    when "rock"
      computer_choice == "paper" ? "lose" : "win"
    when "paper"
      computer_choice == "scissors" ? "lose" : "win"
    when "scissors"
      computer_choice == "rock" ? "lose" : "win"
    end
  end

  run! if app_file == $0
end


