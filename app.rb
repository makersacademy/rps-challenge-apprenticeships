require 'sinatra/base'
require 'sinatra/reloader'

class RockPaperScissors < Sinatra::Base
  enable :sessions

  get '/test' do
    'test page'
  end

  get '/' do
    erb :index
  end

  post '/rps' do
    @name = params[:name]
    erb :rps
  end

  get '/rps' do
    erb :rps
  end

  get '/winner' do
    erb :winner
  end

  run! if app_file == $0
end
