require 'sinatra/base'
class RockPaperScissors < Sinatra::Base

      get "/" do
          erb(:index)
      end

      post "/game" do
        p "hello!"
        @user_name = params[:user_name]
        erb(:game)
      end


  run! if app_file == $0
end
