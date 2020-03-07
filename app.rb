require 'sinatra/base'
class RockPaperScissors < Sinatra::Base
  get '/' do
    erb :index
  end

  post '/name' do
    #pass the name the user has submitted to the instance variable
    @player_name = params[:player_name]
    erb :choose_weapon
  end

  get '/choose_weapon' do
    #pass the weapon chosen to the instance variable

  end

  get '/play' do
    
  end

  get '/result' do
    @weapon = params[:weapon]
    erb :result
  end

   run! if app_file == $0
end
