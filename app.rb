require 'sinatra/base'
#require 'sinatra/reloader'
class RockPaperScissors < Sinatra::Base
  enable :sessions

  get "/" do
    erb :index
  end

  post "/name" do
    session[:name] = params[:name]
    redirect '/game'
  end

  get "/game" do
    @name = session[:name]
    erb :game
  end

  post "/play" do
    session[:play] = params[:play]
    redirect '/winner'
  end

  get "/winner" do
    @name = session[:name]
    @play = session[:play]
    @computer = ["Rock", "Paper", "Scissors"].sample
    erb :winner
  end


  #post "/winner" do - this page displays winners name in lights
  get '/test' do
    'test page'
  end
  run! if app_file == $0
end
