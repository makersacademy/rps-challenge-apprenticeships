# W5 Challenge - Rock Paper Scissors

Created: Jun 17, 2021 9:34 AM
Materials: https://github.com/makersacademy/rps-challenge-apprenticeships, https://github.com/KrzysztofBalejko/birthday_app
Reviewed: No
Subject: WEB
Week: Week 5

**User Stories**

```
As a marketeer
So that I can see my name in lights
I would like to register my name before playing an online game

As a marketeer
So that I can enjoy myself away from the daily grind
I would like to be able to play rock/paper/scissors
```

**Hints on functionality:**

- [x]  the marketeer should be able to enter their name before the game
- [x]  the marketeer will be presented the choices (rock, paper and scissors)
- [x]  the marketeer can choose one option
- [x]  the game will choose a random option
- [ ]  a winner will be declared

**Things to do:**

- [ ]  submit diagram of how the browser interacts with a server (mermaid)
- [x]  set up project (check birthday and battle set up steps)
- [x]  build the front end html
- [x]  unit tests
- [x]  feature tests (give them a try)

Resources for inspiration:

- Birthday challenge solution: I helped me to understand how to set up the app project

[KrzysztofBalejko/birthday_app](https://github.com/KrzysztofBalejko/birthday_app)

- Crondose helped me understand how to use srand and how to test it

[Build Rock, Paper, Scissors in Ruby with Player vs Computer Gameplay](https://www.crondose.com/2017/03/build-rock-paper-scissors-ruby-player-vs-computer-gameplay/)

- As I haven't got to the battle challenge during the weekly pairing, I looked at Arran's code to get a clue how it was done.

[Aroax/battle](https://github.com/Aroax/battle/tree/main/lib)

**Mastery Quizez  / Chapter 6 / quiz 2**

puts "Player 1: rock, paper or scissors?"

pl1 = gets.chomp.downcase

puts "Player 2: rock, paper or scissors?"

pl2 = gets.chomp.downcase

game = ["rock", "paper", "scissors"]

if pl1 == game[0] && pl2 == game[2]

puts "Player 1 wins"

elsif pl1 == game[1] && pl2 == game[0]

puts "Player 1 wins"

elsif pl1 == game[2] && pl2 == game[1]

puts "Player 1 wins"

elsif pl1 == game[2] && pl2 == game[0]

puts "Player 2 wins"

elsif pl1 == game[0] && pl2 == game[1]

puts "Player 2 wins"

elsif pl1 == game[1] && pl2 == game[2]

puts "Player 2 wins"

else

puts "It's a draw."

end