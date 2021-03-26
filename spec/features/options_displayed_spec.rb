feature 'display options' do
  scenario 'player is displayed with three options to choose from' do
    visit('/')
    fill_in :player_name, with: "Zineb"
    click_button 'Submit'
    expect(page).to have_content "Rock, paper or scissors?"
  end
end
