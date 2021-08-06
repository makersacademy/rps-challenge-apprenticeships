require 'sinatra/base'
# require_relative 'lib/game'

class RockPaperScissors < Sinatra::Base
  get '/test' do
    'test page'
  end

  enable :sessions

  get '/' do
    erb :index
  end

  post '/play' do
    @player1 = params[:Player1]
    erb :play
  end

  post '/result' do
    @user_move = params[:move]
    erb :result
  end
  
  run! if app_file == $0
end
