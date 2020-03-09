require 'sinatra/base'
require './lib/player'
require './lib/computer'

class RockPaperScissors < Sinatra::Base
	enable :sessions

	 get '/' do
    erb(:index)
  end

   post '/name' do 
  	session[:player] = params[:player]
    redirect '/play'
  end

  get '/play' do 
  	@player = session[:player]
  	@weapon = session[:weapon]
  	erb(:play)
  end

  post '/play' do 
  	session[:weapon] = params[:weapon]
  	redirect '/play'
  end


   run! if app_file == $0
end
