require 'sinatra/base'
class RockPaperScissors < Sinatra::Base

  get '/test' do
    'test page'
  end

  post '/names' do
    @player_1_name = params[:player_1_name]
    erb :play
  end

