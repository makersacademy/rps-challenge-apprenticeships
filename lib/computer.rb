class Computer

  attr_reader :choice

  def initialize
    @choice = ""
  end

  def random_character
    @choice = rock_paper_scissors_lizard_spock
  end

  private

  def rock_paper_scissors_lizard_spock
    random_num = rand(1..5)
    if random_num == 1
      'rock'
    elsif random_num == 2
      'paper'
    elsif random_num == 3
      'scissors'
    elsif random_num == 4
      'lizzard'
    else 
      'spock'
    end
  end
end