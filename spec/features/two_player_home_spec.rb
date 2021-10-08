feature 'two player home page' do
  scenario 'users enters their names and taken to /two_player_game' do
    visit '/two_player'
    fill_in "player1", with: "Foo"
    fill_in "player2", with: "Bar"
    click_button 'Submit'
    
    expect(page).to have_content('Enter your choice, Foo:')
  end
end
