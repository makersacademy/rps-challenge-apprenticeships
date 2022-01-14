describe 'chose scissors', type: :feature do
  it 'allows the user to pick scissors' do
    sign_in_and_play
    click_button 'scissors'
   expect(page).to have_content 'John plays scissors'
  end
end