class InputChecker

  def initialize
    @@input = "foo"
  end

  class << self
    def input
      @@input
    end

    def set_input(input)
      @@input = input
    end
  end

end