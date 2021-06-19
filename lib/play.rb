class Play
  attr_reader :user_choice, :machine_choice, :play_result

  def initialize(user_choice, machine_choice, play_result)
    @user_choice = user_choice
    @machine_choice = machine_choice
    @play_result = play_result
  end
end
