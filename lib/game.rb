class Game
attr_reader :weapons

#put logic for choosing computer's weapon
def initialize(weapons=["rock", "paper", "scissors"])
  @weapons = weapons
end

def choose_weapon
  weapons.sample


end

# if rand_int == 1
#   computer_weapon = "rock"
# elsif rand_int == 2
#   computer_weapon = "paper"
# elsif rand_int == 3
#   computer_weapon = "scu"

end
#put here logic for choosing winner
#redirect to result view page
