require "sinatra/base"

class RockPaperScissors < Sinatra::Base
  get "/" do
    erb :index
  end
  post "/star-the-game" do
    @name = params[:name]
    erb :play
  end

  run! if app_file == $0
end
