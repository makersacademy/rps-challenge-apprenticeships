require 'sinatra/base'
require 'sinatra/reloader'

class RockPaperScissors < Sinatra::Base
  get '/' do
    erb :welcome
  end

  post '/name' do
    @player_name = params[:player_name]
    erb :game
  end


  run! if app_file == $0
end
