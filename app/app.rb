require 'sinatra/base'


class RockPaperScissors < Sinatra::Base
  enable :sessions

  get '/test' do
    'test page'
  end

  get '/names' do
    erb :index
  end

  post '/names' do
    session[:human_player] = params[:human_player]
    redirect '/start_game'
  end

  get '/start_game' do
    @player = session[:human_player]
    erb :start_game  
  end

  post '/start_game' do
    session[:human_player] = params[:human_player]
    redirect '/rps_game'
  end

  get '/rps_game' do
    session[:human_player] = params[:human_player]
    erb :rps_game
  end


  run! if app_file == $0
end
