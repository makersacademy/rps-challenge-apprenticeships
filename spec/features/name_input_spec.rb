feature 'Name entry form' do
  scenario 'Lets a player enter their name' do
    enter_name_and_play
    expect(page).to have_content 'Luci has joined the game for RPS!'
  end
end
