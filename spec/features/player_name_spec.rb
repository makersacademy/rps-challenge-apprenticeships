feature 'player name' do
  scenario 'a player can login and see their name' do
    sign_in_and_play
    expect(page).to have_content 'jackie'
  end
end
