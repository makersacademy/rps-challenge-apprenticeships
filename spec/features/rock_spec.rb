describe 'chose rock', type: :feature do
  it 'allows the user to pick rock' do
    sign_in_and_play
    click_button 'rock'
   expect(page).to have_content 'John plays rock'
  end
end