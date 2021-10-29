require 'sinatra/base'

class RockPaperScissors < Sinatra::Base
  enable :sessions
  get '/' do
    erb :index
  end

  # get '/play' do
  # end

  post '/names' do
    session[player_1] = params[:player_1]
    erb :play
  end

  run! if app_file == $0
end
