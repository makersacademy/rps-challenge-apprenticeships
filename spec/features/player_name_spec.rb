feature "Player name" do
  scenario "Player enters their name and it is displayed" do
    visit ('/')
    fill_in :name, with: 'Bhups'
    click_button 'Submit'
    expect(page).to have_content "Bhups"
  end
end
