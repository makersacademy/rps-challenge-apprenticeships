require 'sinatra/base'
class RockPaperScissors < Sinatra::Base
  get '/test' do
    'test page'
  end

  run! if app_file == $0

  get '/names' do
    erb :index
  end

  get '/test' do
    erb :index
  end

  post '/play' do
    @player_1_name = params[:player_1_name]
    # player1 = Player.new(params[:player_1_name], params[:sign])
    erb :play
  end
end
