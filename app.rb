require 'sinatra/base'
class RockPaperScissors < Sinatra::Base
  get '/' do
    # p params
    # @random_name = params[:name]
    erb(:index)
  end

  run! if app_file == $0
end



