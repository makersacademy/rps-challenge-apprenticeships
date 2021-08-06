require 'sinatra/base'

class RockPaperScissors < Sinatra::Base
  enable :sessions
   
  get '/test' do
    erb :test_page
  end

  get '/' do 
    erb :index
  end

  post '/name' do 
    session[:p1_name] = params[:p1_name]
    redirect '/play'
  end  

  get '/play' do 
    @name = session[:p1_name]
    erb :play
  end
 
  run! if app_file == $0
end
