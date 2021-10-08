require "sinatra/base"

class RockPaperScissors < Sinatra::Base
  get "/test" do
    "test page"
  end

  get "/" do
    "Please enter your name:"
  end

  run! if app_file == $0
end
