require 'sinatra/base'

class RockPaperScissors < Sinatra::Base
  get '/test' do
    'test page'
  end

  get '/' do 
   "Hey Hey!"
   erb(:index)
  end 

   post '/enter-name' do 
    "Hey Hey!"
     @name = params[:name]
    erb(:names)
  end 
  
   get '/names' do 
    p params
      @name = params[:name]
    erb(:names)
  end 

  run! if app_file == $0
end
