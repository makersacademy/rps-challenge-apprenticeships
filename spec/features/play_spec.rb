feature 'playing rock paper scissors' do
  before :each do
    srand(0)
    sign_in_and_play
  end
  scenario 'player wins a game and gets a win' do
    click_button 'paper'
    expect(page).to have_content 'Your move: Paper'
    expect(page).to have_content 'Their move: Rock'
    expect(page).to have_content 'Score: 1/0/0'
  end
  scenario 'player draws a game and gets a draw' do
    click_button 'rock'
    expect(page).to have_content 'Your move: Rock'
    expect(page).to have_content 'Their move: Rock'
    expect(page).to have_content 'Score: 0/1/0'
  end
  scenario 'player loses a game and gets a loss' do
    click_button 'scissors'
    expect(page).to have_content 'Your move: Scissors'
    expect(page).to have_content 'Their move: Rock'
    expect(page).to have_content 'Score: 0/0/1'
  end
end
