require 'sinatra/base'
require './lib/random_selection'

class RockPaperScissors < Sinatra::Base
  enable :sessions

  get '/test' do
    'test page'
  end

  get '/' do
    erb :index
  end

  post '/players' do
    session[:player_one_name] = params[:player_one_name]
    redirect '/play'
  end

  get '/play' do 
    @player_one_name = session[:player_one_name]
    erb :play
  end

  get '/result' do
    @player_one_name = session[:player_one_name]
    @p1_selection = params[:p1_selection]
    @cpu_selection = RandomSelection.new.rps
    erb :result
  end

  run! if app_file == $0
end
