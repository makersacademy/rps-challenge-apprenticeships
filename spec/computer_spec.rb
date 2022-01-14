require 'computer'

describe Computer do
  it 'gives a randomly generated option from computer' do
    expect(subject).to respond_to :computers_choice
  end
end
