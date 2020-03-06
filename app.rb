require 'sinatra/base'
class RockPaperScissors < Sinatra::Base
  get '/test' do
    'test page'
  end
   run! if app_file == $0

   get '/' do
    erb :index
   end 
end
