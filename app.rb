require 'sinatra/base'
class RockPaperScissors < Sinatra::Base
require 'sinatra/reloader' if development?
  get '/' do
    'Welcome'
  end

  run! if app_file == $0
end
