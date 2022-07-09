require 'sinatra/base'


class RockPaperScissors < Sinatra::Base

  enable :sessions

  # get '/test' do
  #   'home page'
  # end

  get '/' do
   erb :index
  end

	post '/names' do
		session[:player_name] = params[:player_name]
  	redirect '/play'
	end

  get '/play' do
    @player_name = session[:player_name] 
    erb :play
  end

	get '/result' do
		@player_name = session[:player_name] 
		erb :result 
	end




  run! if app_file == $0
end
