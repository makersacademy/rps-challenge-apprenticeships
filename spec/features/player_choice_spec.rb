feature 'Player choice' do
  scenario 'player chooses rock, paper or scissors' do
    sign_in_and_play
    fill_in :choice, with: 'rock'
    click_button 'Submit'
    expect(page).to have_content 'Charlotte chose rock'
  end
end