require 'sinatra/base'
require 'capybara'
require 'capybara/rspec'
require 'rspec'

class RockPaperScissors < Sinatra::Base
  enable :sessions
  get '/test' do
    'test page'
  end

  get '/' do
    erb :index
  end

  post '/name_page' do
    session[:player_name] = params[:player_name]
    redirect '/play'
  end

  get '/play' do
    @player_name = session[:player_name]
    erb :play
  end

  get '/choice' do
    erb :choice
  end

  get '/rock' do
    @player_name = session[:player_name]
    erb :rock
  end

  run! if app_file == $0
end
