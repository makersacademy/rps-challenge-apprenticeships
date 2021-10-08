class Player

  def initialize(name)
    @@name = name
  end

  class << self
    def name
      @@name
    end
  end


end