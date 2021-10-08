# RPS Challenge

## Task

Program a _Rock, Paper, Scissors_ game that can be played on the web with the following user stories:

```
As a marketeer
So that I can see my name in lights
I would like to register my name before playing an online game

As a marketeer
So that I can enjoy myself away from the daily grind
I would like to be able to play rock/paper/scissors
```

### Functionality

- the marketeer should be able to enter their name before the game
- the marketeer will be presented the choices (rock, paper and scissors)
- the marketeer can choose one option
- the game will choose a random option
- a winner will be declared

## Set up

```bash
$ bundle install
$ rspec
```

## Bonus level 1: Multiplayer

Change the game so that two marketeers can play against each other ( _yes there are two of them_ ).

## Bonus level 2: Rock, Paper, Scissors, Spock, Lizard

Use the _special_ rules ( _you can find them here http://en.wikipedia.org/wiki/Rock-paper-scissors-lizard-Spock_)

## Basic Rules

- Rock beats Scissors
- Scissors beats Paper
- Paper beats Rock

In code review we'll be hoping to see:

- All tests passing
- High [Test coverage](https://github.com/makersacademy/course/blob/master/pills/test_coverage.md) (>95% is good)
- The code is elegant: every class has a clear responsibility, methods are short etc.
- Commits and short and scoped

Reviewers will potentially be using this [code review rubric](docs/review.md). Referring to this rubric in advance may make the challenge somewhat easier. You should be the judge of how much challenge you want this weekend.

## Project To Do List

- [x] Raise a Pull Request

### Planning

- [ ] Include a _diagram_ of how the browser interacts with a server

### The Program

- [ ] The Marketer can enter their name before game
- [ ] The marketeer will be presented the choices (rock, paper and scissors)
- [ ] The marketeer can choose one option
- [ ] The game will choose a random option
- [ ]A winner will be declared folowing rules: Rock beats Scissors | Scissors beats Paper| Paper beats Rock

### Bonus

- [ ] Level 1: 2 player: Change the game so that two marketeers can play against each other
- [ ] Level 2: Rock, Paper, Scissors, Spock, Lizard

### Program Quality

- [ ] All tests passing
- [ ] > 95% Test coverage
- [ ] The code is elegant: every class has a clear responsibility, methods are short etc.
- [ ] Commit messages are short & scoped, e.g.

```
<type>[optional scope]: <description>

[optional body]

[optional footer(s)]
```
