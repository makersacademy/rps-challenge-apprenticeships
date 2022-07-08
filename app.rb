require 'sinatra/base'
class RockPaperScissors < Sinatra::Base
  get '/main' do
    'home page'
  end

  run! if app_file == $0
end
