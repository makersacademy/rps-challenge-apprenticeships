require 'sinatra/base'
require 'sinatra/reloader'
require_relative 'lib/game'

class RockPaperScissors < Sinatra::Base
  enable :sessions
  configure :development do
    register Sinatra::Reloader
  end

  get '/test' do
    'test page'
  end

  get '/' do
    erb :index
  end

  post '/play' do
    @player = params[:player_name]
    erb :play
  end

  post '/result' do
    @input = params[:input]
    @game = Game.new(@input)
    erb :result
  end


  run! if app_file == $0
end
