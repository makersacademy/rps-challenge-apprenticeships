require 'sinatra/base'
# require_relative './lib/rock.rb'
# require_relative './lib/paper.rb'
# require_relative './lib/scissors.rb'
# require_relative './lib/lizard.rb'
# require_relative './lib/spock.rb'
# require_relative './lib/player_choice.rb'
# require_relative './lib/random_choice.rb'

require_relative './lib/weapon.rb'

class RockPaperScissors < Sinatra::Base
  get '/test' do
    'test page'
  end

  get '/' do
    erb(:index)
  end

  post '/start' do
    $name = params[:name]
    redirect '/play'
  end

  get '/play' do
    @name = $name
    erb(:play)
  end

  post '/outcome' do

    @player_choice = Weapon.new(params[:choice])
    @computer_choice = Weapon.new

    @player_score = @player_choice.win_status(@computer_choice.choice)
    @computer_score = @computer_choice.win_status(@player_choice.choice)

    erb(:outcome)
  end

  run! if app_file == $0
end
