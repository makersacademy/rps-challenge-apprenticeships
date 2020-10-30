# in app.rb

require 'sinatra/base'
require_relative './lib/game'
require_relative './lib/player'

class RPSLS < Sinatra::Base

  # Allows us to save between requests
  enable :sessions


  get '/' do
    if (defined?(@@game)).nil? then @@game = Game.new end
    erb :index
  end

  post '/reset' do
    @@game = Game.new
    redirect '/'
  end

  post '/action' do
    if params[:player] == "p1" then @@game.player_1.selection = params[:action] end
    if params[:player] == "p2" then @@game.player_2.selection = params[:action] end
    redirect '/waiting-room-game'
  end

  post '/waiting-room-1' do
    @@game.players[0] = Player.new(params[:player_1_name])
    redirect '/waiting-room-names'
  end

  post '/waiting-room-2' do
    @@game.players[1] = Player.new(params[:player_2_name])
    redirect '/waiting-room-names'
  end


  get '/waiting-room-names' do
    print @@game.players
    erb :waiting_room_names
  end

  get '/waiting-room-game' do
    print "P1 Action = #{@@game.player_1.selection}"
    print "P2 Action = #{@@game.player_2.selection}"
    erb :waiting_room_game
  end

  # in app.rb
  get '/play' do
    @game = @@game
    erb :play
  end

  # in app.rb
  get '/results' do
    @game = @@game
    erb :results
  end

  get '/attack' do
    @target = params[:target]
    @game = @@game

    player = @game.target_calculator(@target)

    # Calculate before, after, change. And attack.
    @before = (player).hit_points
    @game.attack(player)
    @after = (player.hit_points)
    @amount = @before - @after

    erb :attack
  end

  get '/heal' do
    @target = params[:target]
    @game = @@game

    if @target == "p1"
      @game.heal(@game.player_1)
    elsif @target == "p2"
       @game.heal(@game.player_2)
    end

    erb :heal
  end


  # start the server if ruby file executed directly
  run! if app_file == $0
end
