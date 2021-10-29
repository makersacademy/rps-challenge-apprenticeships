require 'sinatra/base'
class RockPaperScissors < Sinatra::Base

  get '/test' do
    'test page'
  end

  get '/' do
    erb :index
  end

  post '/play' do
    @name = params[:player_1]
    erb :play
  end

  run! if app_file == $0
end
