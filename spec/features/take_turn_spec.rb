feature 'option to pick' do
  scenario 'pick option' do
    sign_in_and_play
    expect(page).to have_content 'Please type Rock, Paper or Scissors'
  end
end
