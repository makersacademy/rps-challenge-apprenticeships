require 'sinatra/base'

class RockPaperScissors < Sinatra::Base
  enable :sessions

  get '/test' do
    'test page'
  end

  get '/' do
    erb :index
  end

  post '/name' do
    session[:name] = params[:name]
    redirect '/play'
  end

  get '/play' do
    @name = session[:name]
    erb :play
  end

  post '/submit' do
    session[:move1] = params[:move1]
    redirect '/results'
  end

  get '/results' do
    @player = session[:move1]
    #@results = Game.who_wins(@move1)
    erb :results
  end

  run! if app_file == $0
end
