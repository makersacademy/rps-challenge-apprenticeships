require 'sinatra/base'
class RockPaperScissors < Sinatra::Base
  get '/test' do
    'test page'
  end
  get '/' do
    erb :index
  end
  get '/play' do
    @username = params[:user_name]
    erb :play
  end
  get '/game_over' do
    
  end
  run! if app_file == $0
end
