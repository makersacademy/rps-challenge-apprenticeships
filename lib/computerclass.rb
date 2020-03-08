class Computer
attr_accessor :c_choice
  def initialize
  @c_choice = ["rock","paper", "scissors"].sample
  end

  def c_start
  return @c_choice
  end
end
