feature 'name is registered' do
  scenario 'marketeer can register their name before playing' do
    visit('/')
    fill_in :player_name, with: "Zineb"
    click_button 'Submit'
    expect(page).to have_content "Player: Zineb"
  end
end
