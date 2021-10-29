require 'sinatra/base'
require_relative 'lib/player.rb'
class RockPaperScissors < Sinatra::Base
  get '/' do
    erb :index
  end

  post '/handle_user_date' do
    $player_name =  Player.new(params[:player_name])
    redirect '/register'
  end

  get '/register' do
    @player_name = $player_name.user_name
    erb :register
  end

  run! if app_file == $0
end
