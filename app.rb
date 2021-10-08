require 'sinatra'
require "sinatra/reloader" if development?
require './lib/player'
require './lib/input_checker'

class RockPaperScissors < Sinatra::Base

  enable :sessions

  configure :development do
    register Sinatra::Reloader
  end

  get '/' do
    InputChecker.new
    @name_error = InputChecker.input.empty?
    erb(:index)
  end

  post '/register' do
    name = InputChecker.set_input(params[:name])
    redirect "/" if InputChecker.input.empty?
    Player.new(name)
    redirect "/play"
  end

  get '/play' do
    @name = Player.name
    erb(:play)
  end

  run! if app_file == $0
end
