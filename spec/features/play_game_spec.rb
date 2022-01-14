feature 'Play the game' do
  scenario 'User is shown their result when they win' do
    sign_in_and_play
    select('rock', from: 'user_choice')
    click_button 'Play'
    expect(page).to have_content 'Result: You Won'
  end

  scenario 'User is shown their result when they lose' do
    sign_in_and_play
    select('paper', from: 'user_choice')
    click_button 'Play'
    expect(page).to have_content 'Result: You Lost'
  end

  scenario 'User is shown their result when they draw' do
    sign_in_and_play
    select('scissors', from: 'user_choice')
    click_button 'Play'
    expect(page).to have_content 'Result: You Drew'
  end
end