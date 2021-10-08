require 'sinatra/base'
class RockPaperScissors < Sinatra::Base
  get '/test' do
    'test page'
  end

  get "/" do
    erb(:index)
  end

  post "/play" do
    $name = params[:name]
    redirect("/play")
  end

  get "/play" do
    @name = $name
    erb(:play)
  end

  post "/turn" do
    $player_choice = params[:button]
    redirect("/turn")
    
  end

  get "/turn" do
    @move_hierachy ={rock: :scissors, scissors: :paper, paper: :rock}
    @name = $name
    @player_choice = $player_choice
    @bot_choice = [:rock,:paper,:scissors].sample
    
    if(@move_hierachy[@bot_choice]==@player_choice.to_sym)
      @winner = "bot"
      @loser = @name
    elsif(@move_hierachy[@user_choice]==@bot_choice)
      @winner = @name
      @loser = bot
    else
      @draw = true
    end
    return erb(:turn)
  end

  run! if app_file == $0
end
