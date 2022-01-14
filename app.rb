require 'sinatra/base'
class RockPaperScissors < Sinatra::Base
  get '/test' do
    'test page'
  end

  get '/' do 
    erb :index
  end 


  post "/name" do 
    username = params[:username]
    redirect '/game'
  end 


  get '/game' do 
    erb :game   
  end 

  run! if app_file == $0
end
