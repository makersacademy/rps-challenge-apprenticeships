require 'sinatra/base'
class RockPaperScissors < Sinatra::Base
  
  get '/test' do
    'test page'
  end

  get '/' do
    player = params[:player_name]
    erb(:index)
  end

  run! if app_file == $0
end
