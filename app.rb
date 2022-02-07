require 'sinatra/base'
require 'sinatra/reloader'
require_relative './lib/game'

class RockPaperScissors < Sinatra::Base
  
  $game = Game.new

  def get_result(choice)
    $game.move(choice)
  end
  
  get '/' do
    erb(:index)
  end

  post '/play' do
    @name = params['name']
    erb(:play)
  end

  get '/result' do
    @result = get_result(params['choice'])
  end

  run! if app_file == $0
end
