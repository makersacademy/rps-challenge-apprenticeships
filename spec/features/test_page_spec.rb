feature 'index page structure' do
  scenario 'Can load form for user to fill their name' do
    visit('/')
    page.find('form')
  end

  scenario 'can submit form' do
    sign_in_and_play
    expect(page).to have_content 'Bob vs Alice'
  end
end

feature 'pick page structure' do
  scenario 'can submit form for player 1' do
    sign_in_and_play
    click_button "Bob's pick"
    choose('pick', option: 'rock')
    click_button 'Submit'
    expect(page).to have_content 'Bob vs Alice'
  end

  scenario 'can submit form for player 2' do
    sign_in_and_play
    click_button "Alice's pick"
    choose('pick', option: 'rock')
    click_button 'Submit'
    expect(page).to have_content 'Bob vs Alice'
  end
end
