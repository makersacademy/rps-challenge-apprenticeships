require 'sinatra/base'
require 'sinatra/reloader'
class RockPaperScissors < Sinatra::Base
  configure :development do
    register Sinatra::Reloader
  end
  

  get '/' do
    @player_1_name = params[:player_1_name]
    erb :index

  end

  get '/test' do
    'test page'
  end

  post '/names' do
    p params
    @player_1_name = params[:player_1_name]
    erb :index
  end

  run! if app_file == $0
end
