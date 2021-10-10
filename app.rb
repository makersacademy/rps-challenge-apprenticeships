require 'sinatra/base'
require './lib/game'
class RockPaperScissors < Sinatra::Base
  

  get '/test' do
    'test page'
  end

  get '/' do
    erb(:index)
    
  end

  post '/names' do
    @game = Game.new
    @player = params[:player_name]
    @player_name = @player
    erb(:play)
  end


  post '/decision' do
    @decision = params[:choice]
    @game = Game.new
    @result = @game.turn(@decision)

    erb :result
  end

  get '/result' do
    erb(:result)
  end


  run! if app_file == $0
end
