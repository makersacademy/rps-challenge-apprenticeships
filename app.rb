require 'sinatra/base'
class RockPaperScissors < Sinatra::Base
  
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
  run! if app_file == $0
end
