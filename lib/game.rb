class Game
  VALID_MOVES = { rock: [:scissors], paper: [:rock], scissors: [:paper] }.freeze

  @@instance = Game.new
  def self.get
    @@instance
  end

  def move
    VALID_MOVES.keys.sample
  end

  def wins_against?(move, against)
    raise 'Invalid move' if !VALID_MOVES.keys.include?(move) || !VALID_MOVES.keys.include?(against)
    VALID_MOVES[move].include?(against)
  end

  def draws_against?(move, against)
    move == against
  end

  def valid_move?(move)
    VALID_MOVES.include?(move)
  end
end
