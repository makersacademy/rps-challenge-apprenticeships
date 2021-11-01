feature 'Game Starts' do
  scenario 'Player is presented with RPS options' do
    sign_in_and_play
    click_button "Start Game"
    expect(page).to have_content "Rock"
    expect(page).to have_content "Paper"
    expect(page).to have_content "Scissors"
  end
end
