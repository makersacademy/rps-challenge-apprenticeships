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
    "Hello #{@name}"
  end

  run! if app_file == $0
end
