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

  post '/play' do
    @name = params[:name]
    erb :index
  end

  get '/singleplayer' do
    erb :singleplayer
  end

  post '/singleplayer' do
    @choice = params[:choice]
    erb :singleplayer
  end

  get '/multiplayer' do
    erb :multiplayer
  end

  post '/multiplayer' do
    @choice1 = params[:choice1]
    @choice2 = params[:choice2]
    erb :multiplayer
  end

  run! if app_file == $0
end
