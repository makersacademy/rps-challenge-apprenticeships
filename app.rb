require 'sinatra/base'
class RockPaperScissors < Sinatra::Base
  
  get '/' do
    erb :index
  end

  post '/name' do
    player = Player.new(params[:player_1_name])
    # Need to add a global variable to store the player in the rock paper scissor class
    redirect '/play'
  end

  get '/play' do
    erb :play
  end


  run! if app_file == $0
end
