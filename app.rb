require 'sinatra/base'
class RockPaperScissors < Sinatra::Base
  get '/test' do
    'test page'
  end

  get '/' do
    'Johns Rock Paper Scissors'
  end

  run! if app_file == $0
end
