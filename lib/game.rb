require_relative "play"

class Game
  def initialize(play_class = Play)
    @play_class = play_class
    @plays = []
  end

  def add_play(user_choice, machine_choice, play_result)
    play = @play_class.new(user_choice, machine_choice, play_result)
    @plays.push(play)
  end

  def get_game_result
    user_score = 0
    machine_score = 0
    @plays.each { |current_item|
      user_score += current_item.play_result[:user]
      machine_score += current_item.play_result[:machine]
    }
    msg = "You lost"
    if machine_score < user_score
      msg = "You won"
    elsif machine_score == user_score
      msg = "Draw"
    end
    return { msg: msg, user: user_score, machine: machine_score }
  end

  def get_rand_choice
    machine = ["rock", "paper", "scissors"]
    machine_choice = machine[rand(machine.length)]
  end

  def get_curr_res(user_choice, machine_choice)
    if user_choice == "rock" && machine_choice == "scissors"
      return { user: 1, machine: 0 }
    elsif user_choice == "scissors" && machine_choice == "rock"
      return { user: 0, machine: 1 }
    elsif user_choice == "paper" && machine_choice == "rock"
      return { user: 1, machine: 0 }
    elsif user_choice == "rock" && machine_choice == "paper"
      { user: 0, machine: 1 }
    elsif user_choice == "scissors" && machine_choice == "paper"
      return { user: 1, machine: 0 }
    elsif user_choice == "paper" && machine_choice == "scissors"
      return { user: 0, machine: 1 }
    else
      return { user: 1, machine: 1 }
    end
  end

  def get_plays
    @plays
  end

  def restart_game
    @plays = []
  end
end
