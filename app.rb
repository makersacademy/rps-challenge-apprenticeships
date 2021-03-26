require 'sinatra/base'
class RockPaperScissors < Sinatra::Base

  get '/' do
    erb :index
  end

  # post '/name' do
  #   player_1 = params[:player_1_name]
  # end

  run! if app_file == $0
end
