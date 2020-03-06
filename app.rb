require 'sinatra/base'
class RockPaperScissors < Sinatra::Base
	enable :sessions
  get '/' do
    erb :index
  end

  get '/form' do
  	erb :form
  end

  post '/add_player' do
  	session[:player_name] = params[:name]
  	redirect '/play' 
  end

  get '/play' do 
  	'Hiya'
  end
   run! if app_file == $0
end
