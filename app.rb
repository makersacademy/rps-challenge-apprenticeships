require 'sinatra/base'
class RockPaperScissors < Sinatra::Base
  get '/test' do
    'testing testing again'
  end

  run! if app_file == $0
end
