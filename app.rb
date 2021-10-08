require 'sinatra/base'
require 'sinatra/reloader'

class RockPaperScissors < Sinatra::Base
  configure :development do
    register Sinatra::Reloader
  end

  get '/' do
    erb :index
  end

  post '/choose-your-weapon' do
    @player_1_name = params[:player_1_name]
    erb :play
  end

  post '/result' do
    @user_choice = params[:user_choice]
    p @user_choice
    erb :result
  end

  run! if app_file == $0
end
