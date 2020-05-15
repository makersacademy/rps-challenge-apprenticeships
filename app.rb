require 'sinatra/base'
require './lib/rps_game.rb'


class RockPaperScissors < Sinatra::Base
  get '/test' do
    'test page'
  end

  get '/enter-name'do
    erb :index
  end

  get '/choose-your-weapon' do
    erb :weapon
  end


    run! if app_file == $0
end
