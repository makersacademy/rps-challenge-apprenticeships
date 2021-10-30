require 'player'
describe 'make_choice' do
  it 'should raise error if make_choice is null' do
    subject = Player.new("John")
    expect { subject.make_choice(nil) }.to raise_error 'null choice'
  end
  it 'should raise error if invalid choice introduced' do
    subject = Player.new("John")
    expect { subject.make_choice('poo') }.to raise_error 'invalid choice'
  end
  it 'should return value if valid choice introduced' do
    subject = Player.new("John")
    subject.make_choice(Player::CHOICES[0])
    expect(subject.choice).to eq Player::CHOICES[0]
  end
end
