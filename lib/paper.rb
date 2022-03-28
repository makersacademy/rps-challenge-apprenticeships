require_relative "./weapon"

class Paper < Weapon

  def name
    "Paper"
  end

private

  def generate_result(opponent)
    case opponent
    when "Rock"
      @winner = true
    when "Paper"
      @draw = true
    when "Scissors"
      @loser = true
    end
  end

end
