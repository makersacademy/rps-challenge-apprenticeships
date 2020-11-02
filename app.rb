require 'sinatra/base'

class RockPaperScissors < Sinatra::Base
  enable :sessions

  get '/' do
    erb :index
  end

  post '/name' do
    session[:name] = params[:name]
    redirect '/play'
  end

  get '/play' do
    @name = session[:name]
    @move = session[:move]
    erb :play
  end

  post '/play' do
    session[:move] = params[:move]
    redirect '/play'
  end

  # get '/results' do
  #   @player = session[:move]
  #   @results = Game.who_wins(@move)
  #   erb :results
  # end

  run! if app_file == $0
end
