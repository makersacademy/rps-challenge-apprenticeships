require 'sinatra/base'
# require 'sinatra'
class RockPaperScissors < Sinatra::Base

  enable :sessions

  get '/' do
    erb(:index)
  end

  post '/name' do
    session[:first_name] = params[:first_name]
    redirect '/play'
  end

  get '/play' do
    @name = session[:first_name]
    erb(:play)
  end

  get '/result' do
    erb(:result)
  end

  run! if app_file == $0
end
