class GameIdService

  def self.random_id
    id = (0...6).map { rand(65..90).chr }.join
  end
end