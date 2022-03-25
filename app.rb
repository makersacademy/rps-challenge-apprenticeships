require 'sinatra/base'
class RockPaperScissorsApp < Sinatra::Base
  get '/test' do
    'test page'
  end

  run! if app_file == $0
end
