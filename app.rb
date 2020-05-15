require 'sinatra/base'
require_relative './lib/player.rb'
require_relative './lib/game.rb'
class RockPaperScissors < Sinatra::Base
  enable :sessions

  get '/' do
    erb :index
  end

  post '/name' do
    session[:name] = Player.new(params[:name])
    redirect '/play'
  end

  get '/play' do
    @player = session[:name].name
    erb :play
  end

  post '/choice' do
    puts "param is #{params[:choice]}"
    session[:choice] = params[:choice]
    redirect '/result'
  end

  get '/result' do
    @choice = session[:choice]
    @player = session[:name].name
    erb :result
  end
  run! if app_file == $0
end

