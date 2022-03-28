# Method Design Recipe

## User Story
  
As a marketeer
So that I can see my name in lights
I would like to register my name before playing an online game

As a marketeer
So that I can enjoy myself away from the daily grind
I would like to be able to play rock/paper/scissors

--- Hints on functionality ---

- the marketeer should be able to enter their name before the game
- the marketeer will be presented the choices (rock, paper and scissors)
- the marketeer can choose one option
- the game will choose a random option
- a winner will be declared

## 2. Design the Classes Interface
Include the initializer and public methods with all parameters and return values.

========= class =========
  class Game 

  WEAPONS = ["Rock", "Paper", "Scissors"] #the weapons are within an arrray - Constant

  def self.rock 
    return Game::WEAPONS[0] #Game::WEAPONS => static method to access Weapons outside of this class 
  end

  def self.paper 
    return Game::WEAPONS[1]
  end

  def self.scissors 
    return Game::WEAPONS[2]
  end

  def result(player_weapon,computer_weapon) => def in app.rb
  #game's rules
    if player_weapon == computer_weapon
      return draw
    elsif
      (player_weapon == Game::rock && computer_weapon == Game::scissors) || 
      (player_weapon == Game::paper && computer_weapon == Game::rock) || 
      (player_weapon == Game::scissors && computer_weapon == Game::paper)
        retun win
    else
        return lose
    end
  end
end


## 3. Create Examples as Tests
Make a list of examples of how the class will behave in different situations.

# 1
If it is a draw
game = Game.new
player_weapon = rock
computer_weapon = rock
# 2
If it is a win
game = Game.new
player_weapon = rock
computer_weapon = scissors
# 3
If it is a lost
game = Game.new
player_weapon = paper
computer_weapon = scissors

## 4. Implement the Behaviour