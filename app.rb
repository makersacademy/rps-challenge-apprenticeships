require 'sinatra/base'
class RockPaperScissors < Sinatra::Base
  enable :sessions

  get '/test' do
    'test page'
  end

  get '/' do
    erb :index
  end

  post '/name' do
    session[:name] = params[:name]
    redirect '/play'
  end

  get '/play' do
    @name = session[:name]
    @choice = session[:choice]
    erb :play
  end

  post '/play' do
    session[:choice] = params[:choice]
    redirect '/play'
  end

  run! if app_file == $0
end
