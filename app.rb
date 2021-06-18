require 'sinatra'
require 'sinatra/reloader' if development?
class RockPaperScissors < Sinatra::Base
  configure :development do
    register Sinatra::Reloader
  end

  enable:sessions

  get '/test' do
    'test page'
  end
  get '/' do
    erb(:name_form)
  end
  post '/name' do
    session[:name_one] = params[:Name_one]
  end

  run! if app_file == $0
end
