class Decide
  def attack
    options = ["Rock","Paper","Scissors"]
    choose = rand(options.length)
    options[choose]
  end
end
