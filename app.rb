require 'sinatra/base'
require_relative 'lib/player'
class RockPaperScissors < Sinatra::Base
  enable :sessions
  get '/test' do
    'test page'
  end

  get '/names' do
    erb :name
  end

  post "/game" do
    $player_name = Player.new(params[:player_name])
    redirect '/start'
  end

  get "/start" do
    @player_name = $player_name.name
    erb :game
  end

  post "/rock" do
    @rock_option = params[:rock_option]
    erb :option
  end

  post "/paper" do
    @paper_option = params[:paper_option]
    erb :option
  end

  post "/scissors" do
    @scissors_option = params[:scissors_option]
    erb :option
  end

  run! if app_file == $0
end
