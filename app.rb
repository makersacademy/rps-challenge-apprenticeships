require 'sinatra/base'
class RockPaperScissors < Sinatra::Base
require 'sinatra/reloader' if development?

  get '/' do
    erb :index
  end

  run! if app_file == $0
end
