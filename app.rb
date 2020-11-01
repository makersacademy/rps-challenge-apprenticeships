require 'sinatra/base'

class RockPaperScissors < Sinatra::Base
  get '/test' do
    'test page'
  end

  get '/' do
    "you are home"
    erb(:index)
  end

  post '/names' do
    p params
    @player1_name = params[:player1_name]
    erb(:play)
  end

  run! if app_file == $0
end
