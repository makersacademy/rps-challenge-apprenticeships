require 'sinatra/base'


class RockPaperScissors < Sinatra::Base
  enable :sessions
  get '/test' do
    'test page'
  end

  get '/names' do
    erb :index
  end


  run! if app_file == $0
end
