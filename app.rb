require 'sinatra/base'
class RockPaperScissors < Sinatra::Base
  enable :sessions
  get '/' do
    erb :index
  end
  get '/test' do
    'Testing infrastructure working!'
  end
  post '/name' do
    session[:name] = params[:name]
    redirect '/play'
  end
  get '/play' do 
    @name = session[:name]
    erb :play
  end
  # start the server if ruby file executed directly
  run! if app_file == $0
end