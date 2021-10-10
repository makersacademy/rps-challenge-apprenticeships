require 'sinatra/base'
require './lib/game'
class RockPaperScissors < Sinatra::Base
  
  get '/test' do
    'test page'
  end

  get '/' do
    erb(:index)
  end

  post '/name' do
    @player = params[:name]

    erb :play
  end

  get '/play' do
    erb(:play)
  end

  get '/decision' do

  end

  run! if app_file == $0
end
