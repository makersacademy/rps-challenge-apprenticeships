require 'sinatra/base'
# require 'sinatra/reloader'
require_relative './lib/player'

class RockPaperScissors < Sinatra::Base
  # configure :development do
  #   register Sinatra::Reloader
  # end

  get '/test' do
    'test page'
  end

  get '/' do
    erb :index
  end

  post '/name' do
    @player = Player.new(params[:name])
    p params
  end

  run! if app_file == $0
end
