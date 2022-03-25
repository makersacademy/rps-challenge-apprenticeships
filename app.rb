require 'sinatra/base'
require 'sinatra/reloader'
require_relative 'lib/game'

class RockPaperScissors < Sinatra::Base
  configure :development do
    register Sinatra::Reloader
  end

  get '/test' do
    'test page'
  end

  get '/' do 
    erb(:index)
  end

  post '/play' do 
    @player = params[:player]
    erb(:play)
  end

  post '/result' do 
    @answer = params[:answer]
    @game = Game.new(@answer)
    @computer = @game.computer
    @result = @game.result
    erb(:result)
    
  end

  run! if app_file == $0
end
