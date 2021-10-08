feature "Enter the name" do
  scenario "the user enters their name before beginning the game" do
    visit '/'
    page.fill_in 'name', with: 'Amanda'
    page.click_button 'Submit'
    expect(page).to have_content('The Game')
  end
end