require_relative "./weapon"

class Rock < Weapon

  def name
    "Rock"
  end

private

  def generate_result(opponent)
    case opponent
    when "Rock"
      @draw = true
    when "Paper"
      @loser = true
    when "Scissors"
      @winner = true
    end
  end

end
