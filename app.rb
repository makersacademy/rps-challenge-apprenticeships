require 'sinatra/base'
class RockPaperScissors < Sinatra::Base
  get '/' do
    'this is the homepage'
  end

  run! if app_file == $0
end
