require 'sinatra/base'
class RockPaperScissors < Sinatra::Base
  get '/test' do
    'test page'
  end

  get '/' do
    erb :index
  end

  post '/player_names' do
    @name1 = params[:player_1_name]
  end

  run! if app_file == $0
end
