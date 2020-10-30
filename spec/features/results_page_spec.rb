feature 'Display' do
  scenario 'Draw' do
      sign_in_and_play
      select_and_submit_draw
      expect(page).to have_content 'Results...'
      expect(page).to have_content 'Player 1 chose... rock'
      expect(page).to have_content 'Player 2 chose... rock'
      expect(page).to have_content "It's a draw!"
  end

  scenario 'Player 1 wins' do
    sign_in_and_play
    select_and_submit_p1win
    expect(page).to have_content 'Results...'
    expect(page).to have_content 'Player 1 chose... rock'
    expect(page).to have_content 'Player 2 chose... scissors'
    expect(page).to have_content "Player 1 wins!"
  end

  scenario 'Player 2 wins' do
    sign_in_and_play
    select_and_submit_p2win
    expect(page).to have_content 'Results...'
    expect(page).to have_content 'Player 1 chose... rock'
    expect(page).to have_content 'Player 2 chose... paper'
    expect(page).to have_content "Player 2 wins!"
  end
end