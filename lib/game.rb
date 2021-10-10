class Game

  @@moves = {
    "Rock" => ["Scissors", "Rock", "Paper"],
    "Paper" => ["Rock", "Paper", "Scissors"],
    "Scissors" => ["Paper", "Scissors", "Rock"]
  }

  class << self
    
    def shoot(player_move)
      computer_move = random_move
      win_loss_index = @@moves[player_move].index(computer_move) # 0 => win, 1=> draw, 2=> loss
      @@latest_result = get_result(player_move, computer_move, win_loss_index)
    end

    def latest_result
      @@latest_result
    end

    private

    def get_result(player_move, computer_move, win_loss_index)
      return "You chose #{player_move}. The computer chose #{computer_move}. A draw!" if win_loss_index == 1
      win_loss_index == 0 ? "You chose #{player_move}. The computer chose #{computer_move}. You win!" :
                            "You chose #{player_move}. The computer chose #{computer_move}. You lose!"
    end

    def random_move
      @@moves.values[0][rand(0..2)]
    end

  end
end