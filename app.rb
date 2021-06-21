require 'sinatra/base'
require 'sinatra/reloader'
require './lib/player'
require './lib/mechanics'

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

  post '/name' do
    $player = Player.new(params[:player_name])
    redirect "/play"
  end

  get '/play' do
    @player = $player
    @play = $play
    erb(:play)
  end

  post '/choice_rock' do
    @rock = Mechanics.new.game_play(:rock, Mechanics.new.ai_side)
    erb(:rock)
  end

  post '/choice_paper' do
    @paper = Mechanics.new.game_play(:paper, Mechanics.new.ai_side)
    erb(:paper)
  end

  post '/choice_scissors' do
    @scissors = Mechanics.new.game_play(:scissors, Mechanics.new.ai_side)
    erb(:scissors)
  end

  run! if app_file == $0
end
