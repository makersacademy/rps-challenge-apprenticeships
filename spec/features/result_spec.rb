feature 'Displays result' do
  before do
    allow(Computer::WEAPONS).to receive(:sample).and_return(:scissors)
    enter_name
  end

  scenario 'Player selects rock' do
    choose 'rock'
    click_button 'Play'
    expect(page).to have_content 'Congratulations Jim you have won!'
  end

  scenario 'Player selects scissors' do
    choose 'scissors'
    click_button 'Play'
    expect(page).to have_content "It's a draw!"
  end

  scenario 'Player selects paper' do
    choose 'paper'
    click_button 'Play'
    expect(page).to have_content "Jim has lost!"
  end

end
