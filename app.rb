require 'sinatra/base'
class RockPaperScissors < Sinatra::Base
  enable :sessions
  
  get '/' do
    'test page'
    erb :index
  end

  post '/name' do
    $player_name = params[:name]
    redirect '/startgame'
  end

  get '/startgame' do
    @player_name = $player_name
    erb :start_game
  end

  run! if app_file == $0
end
