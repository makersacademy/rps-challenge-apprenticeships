require 'sinatra/base'
class RockPaperScissors < Sinatra::Base
require 'sinatra/reloader' if development?
  get '/test' do
    'test page'
  end

  run! if app_file == $0
end
