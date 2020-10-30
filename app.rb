require 'sinatra/base'
class RockPaperScissors < Sinatra::Base
  get '/test' do
    'test page'
  end

  get '/home' do
    erb :home
  end

  post '/play' do
    @player_name = params[:player_name]
    redirect '/play'
  end

  get '/play' do
    erb :play
  end

  run! if app_file == $0
end
