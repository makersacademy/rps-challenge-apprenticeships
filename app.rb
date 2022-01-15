require 'sinatra/base'
require 'sinatra/reloader'

class RockPaperScissors < Sinatra::Base
    configure :development do
    register Sinatra::Reloader
  end



  get '/' do
   erb :index
  end


  post '/names' do
  # session[:player_name] = params[:player_name]
  # redirect '/index'
  name = params["player_name"]
  announcement = "Hello #{name}, choose your bet:"
  end 

 
 
 
 
  # response after the name
   get '/index' do
   puts "++++++"
   "hola"
   puts "++++++"
  end

  # post '/names' do
  # session[:player_name] = params[:player_name]
  # redirect '/index'
  # end 

  # get '/play' do
  # @player_name = session[:player_name]
  # erb :index
  # end

    get '/test' do
    'test page'
  end

  run! if app_file == $0
end
