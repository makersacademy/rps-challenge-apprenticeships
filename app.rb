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

  post '/name' do
    @name = params[:name]
    erb :name
  end

  get '/rps' do
    "test page"
  end

  run! if app_file == $0
end
