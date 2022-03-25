require "sinatra/base"

class RockPaperScissors < Sinatra::Base
  enable :sessions

  get '/test' do
    'test page'
  end

  get "/" do
    erb(:index)
  end

  post "/welcome" do
    session[:player_name] = params[:player_name]
    redirect to("/play")
  end

  get "/play" do
    @player_name = session[:player_name]
    erb(:play)
  end

  post "/result" do
    weapon = params[:weapon]
    "You chose #{weapon}"
  end
  

  run! if app_file == $0
end
