feature 'User choice' do
  scenario 'user picks rock' do
    sign_in_and_play
    find('#rock').check
    click_link 'OK'
    expect(page).to have_content 'You chose rock!'
  end
  scenario 'user picks paper' do
    sign_in_and_play
    checkbox("paper")
    click_link 'OK'
    expect(page).to have_content 'You chose paper!'
  end
  scenario 'user picks scissors' do
    sign_in_and_play
    checkbox("scissors")
    click_link 'OK'
    expect(page).to have_content 'You chose scissors!'
  end
end