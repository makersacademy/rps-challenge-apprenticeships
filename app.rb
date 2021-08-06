require 'sinatra/base'
require "sinatra/reloader"

class RockPaperScissors < Sinatra::Base
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
  

  run! if app_file == $0
end
