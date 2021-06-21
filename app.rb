require 'sinatra'
require 'sinatra/reloader' if development?
class RockPaperScissors < Sinatra::Base
  configure :development do
    register Sinatra::Reloader
  end

  enable:sessions

  get '/' do
    erb(:name_form)
  end
  post '/name' do
    session[:name_one] = params[:Name_one]
    redirect('/play')
  end
  get '/play' do
    @name_one = session[:name_one]
    erb :start_game
  end

  run! if app_file == $0
end
