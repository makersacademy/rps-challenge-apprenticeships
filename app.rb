require 'sinatra/base'
require "sinatra/reloader"

class RockPaperScissors < Sinatra::Base

  get '/' do
    # @name = params[:name]
    erb :index
  end

  post '/player' do
    @player = params[:player]
    erb :player
  end

  run! if app_file == $0
end
