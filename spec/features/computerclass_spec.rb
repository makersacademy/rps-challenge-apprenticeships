require 'computerclass'

describe 'Computer' do
  let (:computer) { Computer.new }
  it 'can create a new instance' do
    expect(computer).to be_a_kind_of Computer
  end

  it 'can respond to c_start method' do
    expect(computer).to respond_to(:c_start)
  end
end
