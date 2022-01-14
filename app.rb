require 'sinatra/base'
require 'sinatra/reloader'

class RockPaperScissors < Sinatra::Base
  enable :sessions
  configure :development do
  register Sinatra::Reloader
    
  end

  get '/test' do
    'test page'
  end

  get '/' do
   erb:index
  end 

  post '/names' do
    session[:player] = params[:player]
    redirect '/play'
  end

  get '/play' do
    @player = session[:player]
    erb :play
  end

  get'/rock' do
    @player = session[:player]
    erb :rock
  end
    
  get'/paper' do
    @player = session[:player]
    erb :paper
  end

  run! if app_file == $0
end
