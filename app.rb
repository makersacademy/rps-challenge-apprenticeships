require 'sinatra/base'
require './lib/game'

class RockPaperScissors < Sinatra::Base
  enable :sessions

  get '/test' do
    'test page'
  end

  get '/' do
    erb :index
  end

  post '/name' do
    session[:name] = params[:name]
    redirect '/play'
  end

  get '/play' do
    @name = session[:name]
    $game = Game.new
    erb :play
  end

  get '/start' do
    erb :start
  end

  get '/rock' do
    'You chose rock'
  end

  get '/paper' do
    'You chose paper'
  end

  get '/scissors' do
    'You chose scissors'
  end

  run! if app_file == $0
end
