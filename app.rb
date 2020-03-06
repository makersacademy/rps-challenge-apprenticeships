require 'sinatra/base'
require_relative "lib/player.rb"
class RockPaperScissors < Sinatra::Base
  enable :sessions
  get '/test' do
    'test page'
  end
  get "/" do
    erb :homepage
  end
  post "/register_name" do
    player_name = Player.new(params[:player_name])
    redirect "/play"
  end
   run! if app_file == $0
end
