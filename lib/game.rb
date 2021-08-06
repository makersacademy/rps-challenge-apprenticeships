class Game

  COMP_ARR = ['rock', 'paper', 'scissors']

  def self.create(choice)
    @game = Game.new(choice)
  end
  
  def self.instance
    @game
  end

  def initialize(choice)
    @choice = choice
  end

  def choice
    @choice
  end

  def comp_choice
    @comp_choice = COMP_ARR.sample
  end

  def play
    if @choice == 'rock'
      if @comp_choice == 'rock'
        str = "Draw"
      elsif @comp_choice == 'paper'
        str = "Lose"
      else
        str = 'Win'
      end
    elsif @choice == 'paper'
      if @comp_choice == 'rock'
        str = "Win"
      elsif @comp_choice == 'paper'
        str = "Draw"
      else
        str = 'Lose'
      end
    else
      if @comp_choice == 'rock'
        str = "Lose"
      elsif @comp_choice == 'paper'
        str = "Win"
      else
        str = 'Draw'
      end
    end
    str         
  end

end