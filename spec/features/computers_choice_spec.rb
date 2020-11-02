feature 'allow the computer player to pick a random attack' do
  scenario 'computer picks rock,paper or scissors' do
    sign_in_and_play()
    click_button('Paper')
    expect(page).to have_content "Computer picked:"
  end

  scenario 'Computer picked scissors' do
    sign_in_and_play()
    game = double(:game)
    srand(4)
    allow(game).to receive(:computer_attack)
    click_button('Paper')
    expect(page).to have_content "Computer picked: Scissors"
  end
end
