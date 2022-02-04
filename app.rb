require 'sinatra/base'
require 'sinatra/reloader'
class RockPaperScissors < Sinatra::Base
  
  get '/' do
    erb(:index)
  end

  post '/game' do
    @name = params['name']
    erb(:game)
  end

  run! if app_file == $0
end
