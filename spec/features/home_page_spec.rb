feature 'Player name input' do
  scenario 'Both players names are inputted' do
    sign_in_and_play
    expect(page).to have_content 'Michael VS Tomi'
  end
  scenario "Player 1 wins with rock after Player 2 plays scissors" do
    sign_in_and_play
    fill_in "player_1_move", with: "Rock"
    fill_in "player_2_move", with: "Scissors"
    click_button "submit"
    expect(page).to have_content "Michael wins!"
  end
end