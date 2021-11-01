require 'sinatra/base'
class RockPaperScissors < Sinatra::Base
  enable :sessions
  get '/test' do
    'test page'
  end

  get '/' do 
    erb (:index)
  end

  post '/name' do 
    session[:name] = params[:name]
    redirect '/play'
  end

  get '/play' do 
    @name = session[:name]
    @shape = session[:shape]
    @computer_shape = session[:computer_shape]
    erb (:play)
  end

  post '/play' do
    session[:shape] = params[:shape]
    session[:computer_shape] = :rock
    redirect '/play'
  end  

  run! if app_file == $0
end
