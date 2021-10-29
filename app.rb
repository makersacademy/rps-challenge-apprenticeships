require 'sinatra/base'

class RockPaperScissors < Sinatra::Base
  

  get '/test' do
    'test page'
  end

  get '/' do 
    erb :index
  end 

  post '/names' do 
    @player_1_name = params[:player_1_name]
    @player_2_name = params[:player_2_name]
    erb :choose
  end 

  # get '/names' do 
  #   erb :choose
  # end 

  get '/play' do 
    erb :start
  end 

  post '/play' do 
    erb :start
  end 


  run! if app_file == $0
end
