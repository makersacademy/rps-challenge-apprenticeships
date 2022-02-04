require "sinatra"
require "capybara"
require "capybara/rspec"
require "rspec"
require 'sinatra/reloader' if development?

class RockPaperScissors < Sinatra::Base

  configure :development do
    register Sinatra::Reloader
  end

  get '/test' do
    'test page'
  end

  get "/" do
    redirect "login"
  end

  get "/login" do
    erb :login
  end

  post "/set_name" do
    redirect "game"
  end

  get "/game" do
    erb :game
  end

  post "/set_game_choise" do
    erb :result
  end

  run! if app_file == $0
end
