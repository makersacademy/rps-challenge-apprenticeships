require 'sinatra/base'
require_relative './lib/computer'

class RockPaperScissors < Sinatra::Base
  get '/' do
    erb :index
  end

  post '/name' do
    $name = params[:name]
    redirect '/play'
  end

  get '/play' do
    @name = $name
    erb :play
  end

  post '/selection' do
    @players_choice = params[:options]
    @name = $name
    erb :results
  end

  run! if app_file == $0
end
