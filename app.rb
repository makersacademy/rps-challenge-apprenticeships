require 'sinatra/base'
require 'sinatra/reloader'

class RockPaperScissors < Sinatra::Base
  configure :development do
    register Sinatra::Reloader
  end

  enable :sessions

  get '/test' do
    'test page'
  end

  get '/' do
    session[:option] = nil
    erb :index
  end

  post '/play' do
    session[:name] = params[:name]
    redirect '/play'
  end

  get '/play' do
    @name = session[:name]
    @option = session[:option]
    @computer_option = ["ROCK", "PAPER", "SCISSORS"].sample
    erb :play
  end
  
  post '/option' do
    session[:option] = params[:option]
    redirect '/play'
  end

  run! if app_file == $0
end
