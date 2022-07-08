require 'sinatra/base'
# require "sinatra/reloader" if development?
class RockPaperScissors < Sinatra::Base

  enable :sessions
  
  # get '/test' do
  #   'test page'
  # end

  get '/' do
    # session["player_name"] = params["player_name"]
    erb(:index)
    # redirect '/submit-name'
  end

  post '/submit-name' do

    session["player_name"] = params["player_name"]
    @player_name = session["player_name"]
    # erb (:submitted-name)
    erb(:results)
  end

  get '/results' do
    @player_name = session["player_name"]

    erb(:results)
  end

  run! if app_file == $0

end
