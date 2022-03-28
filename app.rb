require 'sinatra/base'

class RockPaperScissors < Sinatra::Base
  get '/test' do
    'test page'
  end

  get '/' do
    erb :index
  end

  post '/play-game' do
    erb :rps_game
  end

  run! if app_file == $0
end
