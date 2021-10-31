class Computer 
  attr_reader :choices 

def pick_choice
  @choices = ["Rock", "Paper", "Scissors"]
  @choices[rand(3)]
end 
end 