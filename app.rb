require 'sinatra/base'
class RockPaperScissors < Sinatra::Base
  get '/test' do
    'test page'
  end

  get '/' do
    erb :index
  end

  post '/players' do
    @player_one_name = params[:player_one_name]
    erb :players
  end

  run! if app_file == $0
end
