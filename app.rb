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
    erb :play
  end

  get '/test' do
    'test page'
  end

  run! if app_file == $0
end
