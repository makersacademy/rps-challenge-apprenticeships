class Winner

  attr_reader :won

  def initialize(player, cpu)
    @player_string = player
    @cpu_string = cpu
    @won = " "
    convert_player
    convert_cpu
    score
  end

  def convert_player
    if @player_string == "Rock"
      @player_i = 0
    elsif @player_string == "Paper"
      @player_i = 1
    else
      @player_i = 2
    end
  end

  def convert_cpu
    if @cpu_string == "Rock"
      @cpu_i = 0
    elsif @cpu_string == "Paper"
      @cpu_i = 1
    else
      @cpu_i = 2
    end
  end
  
  def score
    if (@player_i + 1) % 3 == @cpu_i
      @won = "CPU is the winner!"
    elsif @player_i == @cpu_i
      @won = "It is a draw!"
    else
      @won = "You are the winner!"
    end

  end

end
