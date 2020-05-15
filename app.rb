require 'sinatra/base'
require './lib/rps_game.rb'


class RockPaperScissors < Sinatra::Base
  get '/test' do
    'test page'
  end


  get '/enter-name' do
    @name = params[:name]
    erb :index
  end

  get '/weapon-choice' do
    @rock = params[:rock]
    @paper = params[:paper]
    @scissors = params[:scissors]
    erb :weapon
  end

  get '/fight' do
    erb :fight
  end


    run! if app_file == $0
end
