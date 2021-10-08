require 'sinatra/base'
require 'sinatra/reloader'

class RockPaperScissors < Sinatra::Base
  configure :development do
    register Sinatra::Reloader
  end

  enable :sessions

  get '/' do
    erb :index
  end

  # post '/play' do
  #   @player_name = params[:player_name]
  #   erb :play
  # end

  post '/name' do
    p params
    session[:player_name] = params[:player_name]
    redirect '/play'
  end

  get '/play' do
    @player_name = session[:player_name]
    erb :play
  end

  get '/test' do
    'test page'
  end

  # Line below was already in the app.rb file
  # run! if app_file == $0
  # Don't understand the syntax of this line!

end
