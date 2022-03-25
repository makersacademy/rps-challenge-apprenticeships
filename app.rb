require 'sinatra/base'
require 'sinatra/reloader'
require_relative './lib/game.rb'

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
    @name = params[:name1]
    @answer = params[:answer]
    new_game = Game.new(@answer)
    @opponent_answer = new_game.opponent_answer
    @result = new_game.result
    erb(:play)
  end

  run! if app_file == $0
end
