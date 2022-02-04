require 'sinatra'
require "sinatra/reloader" if development?


class RockPaperScissors < Sinatra::Base
  configure :development do
    register Sinatra::Reloader
  end

  get '/' do
    erb :index
  end

  post '/play' do
    @name = params[:name]
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