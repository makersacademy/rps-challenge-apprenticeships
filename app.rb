require 'sinatra/base'
class RockPaperScissors < Sinatra::Base

  enable :sessions

  get '/' do
    erb :index
  end

  get '/test' do
    'test page'
  end

  post '/name' do
    session[:players_name] = params[:players_name]
    redirect '/play_game'
  end

  get '/play_game' do
    @players_name = params[:players_name]
    erb :play_game
  end


  run! if app_file == $0
end
