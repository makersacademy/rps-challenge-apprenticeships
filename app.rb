require 'sinatra/base'
require 'sinatra/reloader'

class RockPaperScissors < Sinatra::Base
  enable :sessions
  configure:development do
    register Sinatra::Reloader
  end

  get '/test' do
    'test page'
  end

  get '/' do
    erb :index 
  end

 post '/name' do
    session[:player] = params[:player]
    erb :play
    redirect '/play'
  end

  get '/play' do
    @player = session[:player]
    erb :play
  end

  post '/rock' do
    session[:player_choice] = "Rock"
    redirect '/result'
  end 

  post '/paper' do
    session[:player_choice] = "Paper"
    redirect '/result'
  end 

  post '/scissors' do
    session[:player_choice] = "Scissors"
    redirect '/result'
  end 
    


  get '/result' do
    @player = session[:player]
    @player_choice = session[:player_choice]
    session[:computer_choice] = ["Scissors","Paper","Rock"].sample
    @computer_choice = session[:computer_choice]

    session[:won_msg] = "Congrats you won! &#x1F60A;"
    @won_msg = session[:won_msg]

    session[:lost_msg] = "Unlucky you lost! &#x1F61E;"
    @lost_msg = session[:lost_msg]
    erb :result
  end

  run! if app_file == $0
end
