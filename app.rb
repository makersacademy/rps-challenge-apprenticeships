require 'sinatra/base'
class RockPaperScissors < Sinatra::Base
  get '/test' do
    'test page'
  end

  get '/' do
    erb :index
  end

  post '/play' do
    @player_1_name = params[:player_1_name]
    erb :play
  end

  post '/game' do
    @player_1_name = params[:player_1_name]
    erb :game
  end 

  run! if app_file == $0
end
