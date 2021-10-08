require 'sinatra/base'
require 'sinatra/reloader'
class RockPaperScissors < Sinatra::Base
  get '/' do
    erb(:index)
  end

  post '/names' do
    redirect :play
  end

  get '/play' do

  end

  run! if app_file == $0
end
