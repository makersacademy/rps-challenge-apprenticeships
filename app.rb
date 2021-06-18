require 'sinatra/base'
class RockPaperScissors < Sinatra::Base
  enable :sessions
  get '/test' do
    'test page'
  end

  get '/' do
    erb :index
  end

  get '/play' do
    @player_name = session[:player_name]
    erb :play
  end

  post '/names' do
    session[:player_name] = params[:player_name]
    redirect '/play'
  end

  get '/choice/:player_choice' do
    @player_name = session[:player_name]
    @move = params["player_choice"]
    erb :display_choice
  end

  # get '/rock' do
  #   @player_name = session[:player_name]
  #   erb :display_choice
  # end
 
  run! if app_file == $0
end
