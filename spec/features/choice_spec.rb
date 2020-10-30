feature 'Choice of attack' do
  scenario 'attack Computer' do
    sign_in_and_play
    click_button 'rock'
    expect(page).to have_content 'rock'
  end
  scenario 'attack Computer' do
    sign_in_and_play
    click_button 'paper'
    expect(page).to have_content 'paper'
  end
  scenario 'attack Computer' do
    sign_in_and_play
    click_button 'scissors'
    expect(page).to have_content 'scissors'
  end

end
