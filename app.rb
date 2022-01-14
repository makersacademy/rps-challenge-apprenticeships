require 'sinatra/base'
class RockPaperScissors < Sinatra::Base
  get '/test' do
    'test page'
  end
  attr_reader :player_choice
  enable :sessions

  get '/' do
    erb :index
  end

  post '/name' do
    session[:player_name] = params[:player_name]
    redirect '/play'
  end

  get '/play' do
    @player_name = session[:player_name]
    erb :play
  end

  post '/player_choice' do
    session[:player_choice] = params[:player_choice]
    redirect '/outcome'
  end

  get '/outcome' do
    @player_choice = session[:player_choice]
    erb :outcome
  end


  run! if app_file == $0
end
