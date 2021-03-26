require 'sinatra/base'
class RockPaperScissors < Sinatra::Base
  get '/test' do
    'test page'
  end

  get '/' do
    erb :index
  end

  post '/name' do
    @player_name = params[:player_name]
    erb :play
  end

  post '/choice' do
    player_name = params[:player_name]
    @player_choice = params[:player_choice]
    erb :result
  end

  post '/result' do
    'Hello World'
  end

  run! if app_file == $0
end
