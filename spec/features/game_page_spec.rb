feature 'game' do
  scenario '#click rock button' do
    enter_user

    expect(page).to have_selector(:link_or_button, 'Rock')
  end

  scenario '#click paper button' do
    enter_user

    expect(page).to have_selector(:link_or_button, 'Paper')
  end

  scenario '#click scissors button' do
    enter_user
    expect(page).to have_selector(:link_or_button, 'Scissors')
  end
end
