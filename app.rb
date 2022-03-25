require 'sinatra/base'
require 'capybara'
require 'capybara/rspec'
require 'rspec'

class RockPaperScissors < Sinatra::Base
  get '/test' do
    'test page'
  end

  get '/' do
    erb :index
  end

  post '/name_page' do
    @player_name = params[:player_name]
    erb :play
  end

  run! if app_file == $0
end
