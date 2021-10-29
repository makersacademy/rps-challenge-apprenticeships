require 'sinatra/base'
class RockPaperScissors < Sinatra::Base
  get '/' do
    erb :index
  end

  post '/register' do
    @player_name = params[:player_name]
    erb :register
  end

  run! if app_file == $0
end
