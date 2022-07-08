require 'sinatra/base'
class RockPaperScissors < Sinatra::Base
  get '/test' do
    'visit test page'
  end

  run! if app_file == $0
end
