describe 'chose paper', type: :feature do
  it 'allows the user to pick paper' do
    sign_in_and_play
    click_button 'paper'
   expect(page).to have_content 'John plays paper'
  end
end