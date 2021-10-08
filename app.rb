require 'sinatra/base'
require 'sinatra/reloader'

class RockPaperScissors < Sinatra::Base
  # configure :development do
  #   register Sinatra::Reloader
  # end

  get '/test' do
    'test page'
  end

  get '/test2' do
    'testing page and test works'
  end  

  get '/' do
    erb :index
  end  

  post '/name' do
    @player_name = params[:player_name]
    erb :play
  end  

  run! if app_file == $0
end
