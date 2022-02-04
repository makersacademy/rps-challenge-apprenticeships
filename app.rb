require 'sinatra'
require "sinatra/reloader" if development?


class RockPaperScissors < Sinatra::Base
  enable :sessions
  configure :development do
    register Sinatra::Reloader
  end

  get '/' do
    erb :index
  end 

  post '/name' do
    session[:name] = params[:name]
    redirect to '/play'
  end

  get '/play' do
    p session[:name]
    @name = session[:name]
    @rps_message = rps(params[:result])
    erb :play
  end

  get '/test' do
    'test page'
  end

  run! if app_file == $0
end

def rps(result)
  case result
  when "rock"
    return "You selected rock!"
  when "paper"
    return "You selected paper!"
  when "scissors"
    return "You selected scissors!"
  else
    return ""
  end
end