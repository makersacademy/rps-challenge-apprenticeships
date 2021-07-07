require 'sinatra/base'
class RockPaperScissors < Sinatra::Base
  enable :sessions
  set :session_secret, 'here be dragons'

  get '/' do
    erb :index
  end

  get '/play' do
    @player = session[:player]
    attack = session[:attack]
    @confirmation = "Your selected #{attack}" if attack
    erb :play
  end

  post '/add_player' do
    session[:player] = params[:player]
    redirect '/play'
  end

  post '/attack' do
    session[:attack] = params[:attack]

    redirect '/play'
  end

  run! if app_file == $0
end
