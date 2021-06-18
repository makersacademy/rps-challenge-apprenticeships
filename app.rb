require 'sinatra/base'
class RockPaperScissors < Sinatra::Base

  get '/test' do
    'test page'
  end

  get '/' do
    erb :index
  end

  post '/registered' do
    @player_1 = params[:player_1]
    @player_2 = params[:player_2]
    erb :play
  end


  run! if app_file == $0
end
