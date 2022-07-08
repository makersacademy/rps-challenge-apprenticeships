require 'sinatra/base'
class RockPaperScissors < Sinatra::Base
  get '/test' do
    'visit test page'
  end

  get '/' do
    erb :index
  end

  post '/names' do
    @player_1_name = params[:player_1_name]
    erb :gameplay
  end

  run! if app_file == $0
end
