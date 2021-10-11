require 'sinatra/base'

class RockPaperScissors < Sinatra::Base
  configure :development do
    register Sinatra::Reloader
  end
  enable :sessions

  get '/' do
    erb :index
  end

  post '/name' do
    @player_name = params[:player_name]
    erb :name
  end

  post '/choice' do
    @choice = params[:choice]
    erb :choices
  end

  run! if app_file == $0
end
