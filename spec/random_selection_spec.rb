require 'random_selection'

describe RandomSelection do

  it 'randomly select Rock, Paper of Scissors' do
    random_selection_array = []
    1000.times do |i|
      random_selection_array << subject.rps
    end
    arr = random_selection_array.uniq
    expect(arr).to match_array ['Rock', 'Paper', 'Scissors']
  end

end
