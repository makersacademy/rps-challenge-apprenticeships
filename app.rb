require 'sinatra/base'
require_relative './lib/services/game_service'
require_relative './lib/services/game_id_service'
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

  # posted from index/homepage
  post '/start_game' do
    game_id = GameIdService.random_id
    player = Player.new(params[:username])
    @game_service.start_single_player_game(player, game_id)
    session['game_id'] = game_id
    session['current_player'] = player.name
    redirect('/single-player')
  end

  get '/single-player' do
    @game_id = session['game_id']
    game = get_current_game(@game_id)
    @current_player = session['current_player']
    get_player_names(game)
    erb :single_player_game
  end

  # posted from single-player
  post '/play-round' do
    move = define_move(params[:move])
    game_id = params[:game_id]
    player = params[:current_player]
    session['game_id'] = game_id
    session['current_player'] = player
    @game_service.play_solo_round(game_id, player, move)
    redirect('/result')
  end

  get '/result' do
    @current_player = session['current_player']
    @game_id = session['game_id']

    game = get_current_game(@game_id)
    get_player_names(game)
    @player_one_results = game.results[@player_one]
    @player_two_results = game.results[@player_two]
    format_winner_text(game.round_winner)

    erb :result
  end

  post '/next-round' do
    game_id = params[:game_id]
    player = params[:current_player]

    game = get_current_game(game_id)
    session['game_id'] = game_id
    session['current_player'] = player
    get_player_names(game)
    @current_player = params[:current_player]
    redirect('/single-player')
  end

  private 

  def format_winner_text(winner)
    if winner == GameStatusCodes::DRAW
      @result_text = "It's a draw!"
    else
      @result_text = "#{winner.name} won that round!"
    end
  end

  def get_player_names(game)
    @player_one = game.player_one.name
    @player_two = game.player_two.name
  end

  def get_current_game(id)
    @game_service.find_game(id)
  end

  def define_move(move)
    case move
    when "Rock"
      return ROCK
    when "Paper"
      return PAPER
    when "Scissors"
      return SCISSORS
    end
  end

  run! if app_file == $0
end
