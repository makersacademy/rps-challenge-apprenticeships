require_relative "./weapon"

class Scissors < Weapon

  def name
    "Scissors"
  end

private

  def generate_result(opponent)
    case opponent
    when "Rock"
      @loser = true
    when "Paper"
      @winner = true
    when "Scissors"
      @draw = true
    end
  end

end
