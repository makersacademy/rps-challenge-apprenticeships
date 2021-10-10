feature 'user choice' do
  scenario 'user can choose rock' do
    sign_in_and_play
    expect(page).to have_selector(:link_or_button, 'Rock')
  end

  scenario 'user can choose paper' do
    sign_in_and_play
    expect(page).to have_selector(:link_or_button, 'Paper')
  end

  scenario 'user can choose scissors' do
    sign_in_and_play
    expect(page).to have_selector(:link_or_button, 'Scissors')
  end
end
