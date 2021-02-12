require 'sinatra/base'
class RockPaperScissors < Sinatra::Base
  get '/test' do
    'test page'
  end

  get '/' do
    erb :index
  end

  post '/names' do
    @player1 = params[:player1]
    @player2 = params[:player2]
    erb :game
  end
  run! if app_file == $0
end
