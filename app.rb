require 'sinatra/base'

class RockPaperScissors < Sinatra::Base
  get '/test' do
    'test page'
  end

  get '/' do
    erb :index
  end

  post '/select_move' do
    erb :select_move
  end
  
  run! if app_file == $0
end
