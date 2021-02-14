require 'sinatra/base'
class RockPaperScissors < Sinatra::Base
  get '/test' do
    'test page'
  end

  get '/' do
    erb(:index)
  end

  get '/instructions' do
    erb(:instructions)
  end

  get '/single-player' do
    erb(:single_player)
  end

  
  run! if app_file == $0
end
