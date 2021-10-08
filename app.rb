require 'sinatra/base'

class RockPaperScissors < Sinatra::Base
  
  get '/' do
    erb :name_form
  end

  run! if app_file == $0
end
