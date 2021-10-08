require "sinatra/base"

class RockPaperScissors < Sinatra::Base
  get "/test" do
    "test page"
  end

  get "/" do
    erb(:name)
  end

  post "/play" do
    erb(:play)
  end

  run! if app_file == $0
end
