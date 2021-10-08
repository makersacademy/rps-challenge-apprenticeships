require "sinatra/base"

class RockPaperScissors < Sinatra::Base
  enable :sessions
  get "/test" do
    "test page"
  end

  get "/" do
    "Please enter your name:"
    erb(:entername)
  end

  post "/play" do
    session[:name] = params[:name]
    erb(:play)
  end

  post "/result" do
    @name = session[:name]
    p @user_choice = params[:user_choice]
    @cpu_choice = ["rock", "paper", "scissors"].sample
    erb(:result)
  end

  get "/end" do
    "Goodbye"
  end

  run! if app_file == $0
end
