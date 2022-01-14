require 'sinatra/base'
require_relative './lib/computer'
require_relative './lib/game'

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
    @name = $name
    $players_choice = params[:options]
    $computers_choice = Computer.new.computer_choice
    @winner = Game.new.result($players_choice, $computers_choice)
    erb :results
  end

  run! if app_file == $0
end
