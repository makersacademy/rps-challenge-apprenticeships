require 'sinatra/base'
require 'sinatra/reloader'

class RockPaperScissors < Sinatra::Base
  configure :development do
    register Sinatra::Reloader
  end

  # enable :sessions

  get '/' do
    'Welcome to Rock, Paper, Scissors!'
    # erb :index
  end

  get '/test' do
    'test page'
  end

  # run! if app_file == $0
  # Don't understand the syntax of this line above
  # Was already in the app.rb file

end
