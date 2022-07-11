require 'sinatra/base'
class RockPaperScissors < Sinatra::Base

  enable :sessions
  get '/test' do
    'test page '
  end
  get '/' do
    erb :index
  end
  post '/action_page' do
     session[:name] = params[:name]
     redirect '/play'
  end
  get '/play' do
    @player_name = session[:name]
    erb :play
  end
  post '/record-action' do
    session[:action] = params[:action]
    redirect '/result'
  end
  get '/result' do
    @selection = session[:action]
    @opponent = [:Rock, :Paper, :Scissors].sample
    erb :result
  end
    
    run! if app_file == $0
end
