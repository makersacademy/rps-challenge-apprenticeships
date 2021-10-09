require "sinatra/base"
require "sinatra/reloader"

class RockPaperScissors < Sinatra::Base
  configure :development do
    register Sinatra::Reloader
  end

  get "/" do
    "Welcome to Rock, Paper Scissors!"
  end
end
