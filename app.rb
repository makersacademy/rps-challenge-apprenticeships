require 'sinatra/base'

class RockPaperScissors < Sinatra::Base

  get '/test' do
    erb :test_page
  end

  get '/' do 
    erb :index
  end











  run! if app_file == $0
end
