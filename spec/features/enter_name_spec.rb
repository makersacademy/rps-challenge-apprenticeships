feature "Enter name" do
  scenario "Before game starts, player enters name" do
    visit('/')
    fill_in 'player_name', with: 'John'
    click_button 'Register'

    expect(page).to have_content 'John'
  end
end
