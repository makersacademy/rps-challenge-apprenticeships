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

========= class 1 =========
  class Player
    def initialize(name)
      @name = name
    end

    def select_weapon(weapon)
      #fail 'not a possible choice' unless WEAPONS.includes? weapon
      @player_weapon = weapon
    end

  ========= class 2 =========
   
  class Computer
    def weapon
      Game::WEAPONS.sample
    end
  end
  ========= class 3 =========

  class Game
    WEAPONS = [:rock, :paper, :scissors]
    RULES = { rock: :scissors,
          paper: :rock,
          scissors: :paper }
   
    def result
      if player_weapon = computer-weapon.choice 
       return "draw"
      else 
        RULES[player_weapon][computer-weapon.choice] ? :win :loose
    end
  end


## 3. Create Examples as Tests
Make a list of examples of how the class will behave in different situations.

# 1


# 2


# 3


# 4


# 5

## 4. Implement the Behaviour