require 'sinatra/base'
class RockPaperScissors < Sinatra::Base
  get '/' do
    erb :index
  end

  get '/form' do
  	erb :form
  end
   run! if app_file == $0
end
