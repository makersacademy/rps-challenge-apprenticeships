require 'sinatra/base'
class RockPaperScissors < Sinatra::Base
  enable :sessions
  get '/' do
    erb :index
  end

  post '/name' do
    session[:player_1] = params[:player_1]
    redirect '/play'
  end

  get '/play' do
    @name = session[:player_1]
    @weapon = session[:weapon]
    @opponent_weapon = session[:opponent_weapon]
    erb :play
  end

  post '/play' do
    session[:weapon] = params[:weapon]
    session[:opponent_weapon] = Game.new.computer_weapon
    redirect '/play'
  end


  run! if app_file == $0
end
