require 'sinatra/base'

class RockPaperScissors < Sinatra::Base
  get '/test' do
    'test page'
  end

  get '/' do
    erb :index
  end

  post '/name' do
    $player_name = params[:player_name]
    redirect '/play'
  end

  get '/play' do
    @player_name = $player_name
    erb :play
  end

  post '/throw' do
    $throw = params[:throw]
    redirect '/result'
  end

  get '/result' do
    @throw = $throw
    erb :result
  end


  run! if app_file == $0
end
