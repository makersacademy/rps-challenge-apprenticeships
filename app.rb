require 'sinatra/base'
require 'sinatra/reloader'
require_relative '/Users/manu/Projects/rps-challenge-apprenticeships/lib/result.rb'

class RockPaperScissors < Sinatra::Base
  enable :sessions
  configure :development do
    register Sinatra::Reloader
  end

  get '/' do
    erb :index
  end

  post '/name' do
    session[:player_1] = params[:player_1]
    redirect '/select'
  end

  get '/select' do
    @player_1 = session[:player_1]
    erb :select
  end  

  post '/choice' do
    @player_1 = session[:player_1]
    @choice = params[:choice].capitalize
    @cpu_choice = ["Rock", "Paper", "Scissors"].sample
    erb:choice
  end  

  get '/test' do
    'test page'
  end

  run! if app_file == $0
end
