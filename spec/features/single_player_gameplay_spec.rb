require_relative 'web_helpers'

feature 'play a rock paper scissors game' do

  let(:computer_choice) { instance_double(Computer) }

  scenario 'player choice rock vs computer rock' do
    allow(Computer).to receive(:new) {computer_choice}
    allow(computer_choice).to receive(:random_character) { 'rock' }
    sign_in
    click_button('rock')
  end

end