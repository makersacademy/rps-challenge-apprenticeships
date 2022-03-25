require 'sinatra/base'
require 'capybara'
require 'capybara/rspec'
require 'rspec'
require './lib/player'


class RockPaperScissors < Sinatra::Base
  enable :sessions
  get '/test' do
    'test page'
  end

  get '/' do
    erb :index
  end

  post '/name_page' do
    $player = Player.new(params[:player_name])
    redirect '/play'
  end

  get '/play' do
    @player_name = $player.name
    erb :play
  end

  get '/choice' do
    erb :choice
  end

  post '/choice_form' do
    $player.choice = params[:RPS]
    redirect '/outcome'
  end

  get '/outcome' do
    @player_name = $player.name
    @player_choice = $player.choice
    erb :outcome
  end

  run! if app_file == $0
end
