require 'sinatra/base'
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
  
  run! if app_file == $0
end
