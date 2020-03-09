require 'sinatra/base'
require './lib/player'
require './lib/computer'
require './lib/game'

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
  	@computer_weapon = session[:computer_weapon]
  	erb(:play)
  end

  post '/play' do 
  	session[:weapon] = params[:weapon]
  	session[:computer_weapon] = 'scissors'
  	redirect '/play'
  end


   run! if app_file == $0
end
