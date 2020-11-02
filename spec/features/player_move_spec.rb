# As a marketeer
# So that I can enjoy myself away from the daily grind
# I would like to be able to play rock/paper/scissors

# --------------------------------------------------
# As a marketeer
# So I can play a game of RockPaperScissors
# I want to see the moves I can play

feature "Player options" do
  scenario "Player can see available moves" do
    visit('/play')
    expect(page).to have_button 'Rock'
    expect(page).to have_button 'Paper'
    expect(page).to have_button 'Scissors'
  end


# --------------------------------------------------
# As a marketeer
# So I can play a game of RockPaperScissors
# I want to chose a move

  scenario 'chose a move' do
    visit('/play')
    click_button('Rock')
    expect(page).to have_content "You chose Rock!"
  end

# --------------------------------------------------
# As a marketeer
# So I can play a game of RockPaperScissors
# I want the game to chose a move

#   scenario 'game choses "Rock"' do
#     click_button 'Rock'
#     expect(page).to have_content 'Opponent chose Rock!'
#   end

end
