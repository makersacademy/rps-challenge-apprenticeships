require 'sinatra/base'
class RockPaperScissors < Sinatra::Base
  enable :sessions
  get '/test' do
    'test page'
  end

  get '/' do
    erb :index
  end

  post '/names' do
    @player_name = params[:name]
    erb :options
  end

   run! if app_file == $0
end
