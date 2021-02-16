require 'sinatra/base'
class RockPaperScissors < Sinatra::Base
  enable :sessions
  get '/' do
    erb :index
  end

  post '/name' do
    session[:player_name] = params[:player_1]
    redirect '/play'
  end

  get '/play' do
    @game = Game.new(session)
    erb :play
  end

  post '/play' do
    session[:player_weapon] = params[:weapon]
    session[:computer_weapon] = Computer.new.weapon
    redirect '/play'
  end


  run! if app_file == $0
end
