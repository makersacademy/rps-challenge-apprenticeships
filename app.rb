require 'sinatra/base'
class RockPaperScissors < Sinatra::Base
  get '/welcome' do
    erb :welcome
  end

  run! if app_file == $0
end
