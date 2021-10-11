require "sinatra/base"

class RockPaperScissors < Sinatra::Base
  get "/test" do
    "test page"
  end

  get "/" do
    erb :index
  end

  post "/register" do
    @player1 = params[:player1]
    erb :play
  end

  post "/result" do
    @choose = params[:choose]
    erb :result
  end

  run! if app_file == $0
end
