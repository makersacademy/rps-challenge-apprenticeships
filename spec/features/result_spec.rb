feature 'game result' do
  scenario 'page shows user choice' do
    sign_in_and_play
    click_button 'Rock'
    expect(page).to have_content 'You chose: Rock'
  end

  scenario 'page shows computer choice' do
    sign_in_and_play
    click_button 'Rock'
    expect(page).to have_content 'The computer chose: '
  end
end