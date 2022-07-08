require 'sinatra/base'
class RockPaperScissors < Sinatra::Base

  enable :sessions
  get '/test' do
    'test page '
  end
  get '/' do
    erb :index
  end
  post '/action_page' do
     p params
     @name = player
  end

  

    run! if app_file == $0
end
