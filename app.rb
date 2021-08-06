require 'sinatra/base'
require 'sinatra/reloader'

class RockPaperScissors < Sinatra::Base
  
  configure :development do
    register Sinatra::Reloader
  end

  get '/' do
    erb :index
  end

  post '/names' do
    @player_1 = params[:player_1]
    erb :play
  end

  get '/test' do
    'test page'
  end

  run! if app_file == $0
end
