require 'sinatra/base'
class RockPaperScissors < Sinatra::Base
  enable :sessions

  get '/test' do
    'test page'
  end

  get '/' do
    erb :index
  end

  post '/name-submit' do
    session[:name] = params[:name]
    redirect('/welcome')
  end

  get '/welcome' do
    @name = session[:name]
    erb :welcome_screen
  end


  run! if app_file == $0
end
