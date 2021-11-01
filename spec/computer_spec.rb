require 'computer'

describe Computer do
  it 'chooses randomly' do
    expect(Game::CHOICE).to include subject.choice 
  end
end