require_relative '../../lib/computer'

describe Computer do
  it 'has a name' do
    expect(subject.name).to_not be_empty
  end

end
