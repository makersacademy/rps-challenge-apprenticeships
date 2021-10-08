require "./generate_choice.rb"

describe GenerateChoice do
  it "randomly chooses rock, paper or scissors" do
    arr = []
    30.times { arr.push(subject.generates) }
    p arr
    expect(arr).to include "Rock" && "Paper" && "Scissors"
  end
end
