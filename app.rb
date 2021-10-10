# in app.rb

require 'sinatra/base'
require 'sinatra/reloader'

class RockPaperScissors < Sinatra::Base
  configure :development do
    register Sinatra::Reloader
  end

  get '/' do
    'Hello Game!'
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end