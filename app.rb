require 'sinatra/base'
require 'sinatra/reloader'

class RockPaperScissors < Sinatra::Base

  configure :development do
    register Sinatra::Reloader
  end

  get '/test' do
    'test page'
  end

  get '/' do 
    erb :index
  end

  post '/welcome' do
    @player_name = params[:name]
    erb :welcome
  end

  run! if app_file == $0
end
