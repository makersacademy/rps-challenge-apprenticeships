require 'sinatra/base'
class RockPaperScissors < Sinatra::Base
  enable :sessions

  get '/' do
    erb :index
  end

  post '/name' do
    session[:name] = params[:name]
    redirect '/game'
  end

  get '/game' do
    @name = session[:name]
    erb :game
  end

  post '/choice' do
    session[:choice] = params[:weapon]
    redirect '/result'
  end

  get '/result' do
    @choice = session[:choice]
    erb :result
  end

  run! if app_file == $0
end

# EZ DEBUGGER :D
# p '*' * 10
# p
# p '*' * 10