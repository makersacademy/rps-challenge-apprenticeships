require 'sinatra/base'
class RockPaperScissors < Sinatra::Base
  get '/' do
    'this is your homepage'
  end

  get '/cheeky-route' do
    'added another cheeky route'
  end

  get '/derp' do
    'derp'
  end

  run! if app_file == $0
end
