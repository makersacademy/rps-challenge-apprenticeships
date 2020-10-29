require 'sinatra/base'
class RockPaperScissors < Sinatra::Base
  enable :sessions

  get '/test' do
    'test page'
  end

  get '/' do
    erb(:index)
  end

  post '/add_name' do
    session[:name] = params[:player1_name]
    redirect '/play'
  end

  get '/play' do
    @player1_name = session[:name]
    erb(:play)
  end

  run! if app_file == $0
end
