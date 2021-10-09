#routing

require 'sinatra/base'

class RockPaperScissors < Sinatra::Base
  
  get '/' do
    erb :index #routing file
  end

  post '/name' do
    @player_name = params[:player_name]
    erb :name #routing file
  end

  get '/play' do
    erb :play

  end
  run! if app_file == $0
end