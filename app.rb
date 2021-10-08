require 'sinatra/base'
class RockPaperScissors < Sinatra::Base
  get '/test' do
    'test page'
  end

  get "/" do
    erb(:index)
  end

  post "/play" do
    $name = params[:name]
    redirect("/play")
  end

  get "/play" do
    @name = $name
    erb(:play)
  end

  post "/turn" do
    $player_choice = params[:button]
    redirect("/turn")
    
  end

  get "/turn" do
    @name = $name
    return "#{@name} chose #{$player_choice}"
  end

  run! if app_file == $0
end
