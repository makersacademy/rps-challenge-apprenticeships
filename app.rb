require 'sinatra'
require "sinatra/reloader" if development?

class RockPaperScissors < Sinatra::Base

  enable :sessions

  configure :development do
    register Sinatra::Reloader
  end

  get '/' do
    @name_error = session[:name_error].nil? ? nil : true
    erb(:index)
  end

  post '/register' do
    session[:name] = params[:name]
    if session[:name].empty?
      session[:name_error] = true
      redirect "/"
    end
    redirect "/play"
  end

  get '/play' do
    erb(:play)
  end

  run! if app_file == $0
end
