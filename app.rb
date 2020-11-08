require 'sinatra/base'
require_relative './lib/player.rb'
require_relative './lib/game.rb'

class RockPaperScissors < Sinatra::Base
  set :public_folder, 'public'
  get '/' do
    erb :index
  end

  post '/names' do
    @game = Game.create(Player.new(params[:name]))
    redirect '/play'
  end

  before do
    @game = Game.instance
  end

  get '/play' do
    erb :play
  end

  post '/game' do
    @game.player.choice = params[:action].downcase.to_sym
    @result = @game.calculate_result.upcase
    erb :result
  end

  run! if app_file == $0
end
