require 'sinatra/base'

class RockPaperScissors < Sinatra::Base

  enable :sessions

  get '/test' do
    'Test page'
  end

  get '/' do
    erb :index
  end

  post '/player_name' do
    session[:player_name] = params[:player_name]
    redirect '/play'
  end

  get '/play' do
    @player_name = session[:player_name]
    @weapon = session[:weapon]
    @opponent_weapon = session[:opponent_weapon]
    erb :play
  end

  post '/play' do
    session[:weapon] = params[:weapon]
      session[:opponent_weapon] = :rock
    redirect '/play'
  end

  run! if app_file == $0
end
