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
    redirect '/move'
  end

  get '/move' do
    @name = session[:name]
    erb :move
  end

  post '/results' do
  
  end

  run! if app_file == $0
end
