require "sinatra/base"

class RockPaperScissors < Sinatra::Base
  get "/test" do
    "test page"
  end

  get "/" do
    "Please enter your name:"
    erb(:entername)
  end

  post "/play" do
    @name = params[:name]
    erb(:play)
  end

  post "/result" do
    @choice = params[:choice]
    @cpu_choice = cpu_choice
    erb(:result)
  end

  run! if app_file == $0
end
