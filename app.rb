require 'sinatra/base'
require 'sinatra/reloader'
require_relative './lib/rps'
require_relative './lib/opponent'

class RockPaperScissors < Sinatra::Base
  enable :sessions
  configure :development do 
    register Sinatra::Reloader
  end

  get '/' do
    erb(:index)
  end

  post '/mode' do
    if params[:mode] == "one-player"
      redirect '/one-player'
    else 
      redirect '/two-player'
    end
  end

  get '/one-player' do
    erb(:oneplayer)
  end

  post '/name' do
    session[:player] = params[:name]
    redirect '/og-play'
  end

  get '/og-play' do 
    @name = session[:player]
    erb(:ogplay)
  end

  post '/choice' do
    session[:choice] = params[:choice]
    redirect '/result'
  end

  get '/result' do
    @name = session[:player]
    @round = RPS.new(session[:choice], Opponent.new)
    erb(:result)
  end
  
  get '/test' do
    'test page'
  end

  run! if app_file == $0
end
