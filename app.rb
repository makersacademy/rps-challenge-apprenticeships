require 'sinatra/base'
class RockPaperScissors < Sinatra::Base
  get '/test' do
    'test page'
  end

  get '/' do
    erb :index
  end

  post '/names' do
    $player_1_name = params[:player_1_name]
    redirect '/play'
  end

  get '/play' do
    erb :play
  end

  post '/selection' do
    $player_1_selection = params[:selection]
    redirect '/play'
  end

  run! if app_file == $0
end
