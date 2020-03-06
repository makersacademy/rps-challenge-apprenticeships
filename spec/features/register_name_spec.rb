feature "Enter name" do
  scenario "registering name" do
    visit('/')
  fill_in :player_name, with: 'Jo'
  click_button 'Submit'
  end
end
