feature 'Results' do

  scenario 'Player loses' do
    allow_any_instance_of(ComputerPlayer).to receive(:make_move).and_return(:scissors)
    sign_in_and_play
    select('Paper', from: 'move')
    2.times { click_button "OK" }
    expect(page).to have_content "You lose!"
  end    
end

feature 'Results win' do
  scenario 'Player wins' do
    allow_any_instance_of(ComputerPlayer).to receive(:make_move).and_return(:paper)
    sign_in_and_play
    select('Scissors', from: 'move')
    2.times { click_button "OK" }
    expect(page).to have_content "You win!"
  end
end

feature 'Results draw' do
  scenario 'Player draws' do
    allow_any_instance_of(ComputerPlayer).to receive(:make_move).and_return(:paper)
    sign_in_and_play
    select('Paper', from: 'move')
    2.times { click_button "OK" }
    expect(page).to have_content "It's a draw!"
  end
end
