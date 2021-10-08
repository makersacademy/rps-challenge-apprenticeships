require 'sinatra/base'
require_relative './lib/services/game_service'
require_relative './lib/domain/player'
class RockPaperScissors < Sinatra::Base
  include GameStatusCodes

  def initialize(app = nil, game_service = GameService.new)
    super(app)
    @game_service = game_service
  end

  set :views, './lib/views'
  enable :sessions

  get '/' do
    erb :index
  end

  get '/single-player' do
    @game_id = session['game_id']
    game = get_current_game(@game_id)
    @current_player = session['current_player']
    @player_one = game.player_one.name
    @player_two = game.player_two.name
    erb :single_player_game
  end

  get '/result' do
    @result = session['result']
    erb :result
  end

  post '/start_game' do
    game_id = rand(1000..9999).to_s
    player = Player.new(params[:username])
    @game_service.start_single_player_game(player, game_id)
    puts "Round ID: #{game_id}" 
    session['game_id'] = game_id
    session['current_player'] = player.name
    redirect('/single-player')
  end

  post '/play-round' do
    player_name = params[:current_player]
    move = define_move(params[:move])
    game = params[:game_id]
    puts "Round ID: #{game}"
    session['game_id'] = game
    session['current_player'] = player_name
    session['result'] = @game_service.play_solo_round(game, player_name, move)
    redirect('/result')
  end

  private 

  def get_current_game(id)
    @game_service.find_game(id)
  end

  def define_move(move)
    if move == "Rock"
      return ROCK
    end
    if move == "Paper"
      return PAPER
    end
    if move == "Scissors"
      return SCISSORS
    end
  end

  run! if app_file == $0
end
