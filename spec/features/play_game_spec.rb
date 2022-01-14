feature 'Play the game' do
  scenario 'User is shown their result when they win' do
    allow_any_instance_of(Array).to receive(:sample).and_return('scissors')
    sign_in_and_play
    select('rock', from: 'player_choice')
    click_button 'Play'
    expect(page).to have_content 'Result: You Won'
  end

  scenario 'User is shown their result when they lose' do
    allow_any_instance_of(Array).to receive(:sample).and_return('scissors')
    sign_in_and_play
    select('paper', from: 'player_choice')
    click_button 'Play'
    expect(page).to have_content 'Result: You Lost'
  end

  scenario 'User is shown their result when they draw' do
    allow_any_instance_of(Array).to receive(:sample).and_return('scissors')
    sign_in_and_play
    select('scissors', from: 'player_choice')
    click_button 'Play'
    expect(page).to have_content 'Result: You Drew'
  end

  scenario 'User plays again' do
    sign_in_and_play
    select('scissors', from: 'player_choice')
    click_button 'Play'
    click_link 'Play Again'
    expect(page).to have_content 'Aadam vs Computer'
  end

  scenario 'User quits to let another player play' do
    sign_in_and_play
    select('scissors', from: 'player_choice')
    click_button 'Play'
    click_link 'Quit'
    expect(page).to have_field :player_name
  end
end
