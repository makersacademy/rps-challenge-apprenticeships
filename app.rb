require 'sinatra/base'
class RockPaperScissors < Sinatra::Base
  get '/test' do
    'testing testing one last time!'
  end

  run! if app_file == $0
end
