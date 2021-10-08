require "sinatra/base"
require "sinatra/reloader"

class RockPaperScissors < Sinatra::Base
  use Rack::Session::Cookie
  configure :development do
    register Sinatra::Reloader
  end

  enable :sessions

  # get '/test' do
  #   'test page'
  # end

  get "/" do
    erb(:index)
  end

  post "/name-info" do
    session[:username] = params[:name]
    redirect "/play"
  end

  get "/play" do
    @name = session[:username]
    erb(:play)
  end

  post "/victory" do
    session[:choice] = params[:choice]
    p params[:choice]
    redirect "/result"
  end

  get "/result" do
    @choice = session[:choice]
    erb(:result)
  end

  run! if app_file == $0
end
