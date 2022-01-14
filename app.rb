require 'sinatra/base'
require 'sinatra/reloader'

class RockPaperScissors < Sinatra::Base
  enable :sessions
  configure :development do 
    register Sinatra::Reloader
  end

  get '/' do
    erb(:index)
  end

  post '/name' do
    session[:player] = params[:name]
    redirect '/play'
  end

  get '/play' do 
    @name = session[:player]
    erb(:play)
  end

  post '/choice' do
    session[:choice] = params[:choice]
    redirect '/result'
  end

  get '/result' do
    "Result"
  end
  
  get '/test' do
    'test page'
  end

  run! if app_file == $0
end
