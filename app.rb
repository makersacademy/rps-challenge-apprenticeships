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

  get '/soloplay' do

  end

  get '/multiplayer' do

  end

  run! if app_file == $0
end
