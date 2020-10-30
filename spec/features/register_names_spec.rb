
feature 'Register names' do
  scenario 'name registered before playing' do
    visit('/')
    fill_in :player_1_name, with: 'Jake'
    click_button 'Register'
    expect(page).to have_content 'Jake the marketeer'
  end
end
