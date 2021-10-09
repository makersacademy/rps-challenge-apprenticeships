feature 'index page structure' do
  scenario 'Can load form for user to fill their name' do
    visit('/')
    page.find('form')
  end

  scenario 'can submit form' do
    sign_in_and_play
    expect(page).to have_current_path('/play')
  end
end

feature 'pick page structure' do
  before(:each) do
    sign_in_and_play
  end

  scenario 'can submit form for player 1' do
    click_button "Bob's pick"
    choose('pick', option: 'rock')
    click_button 'Submit'
    expect(page).to have_current_path('/play')
  end

  scenario 'can submit form for player 2' do
    click_button "Alice's pick"
    choose('pick', option: 'rock')
    click_button 'Submit'
    expect(page).to have_current_path('/play')
  end
end

feature 'play page structure' do
  before(:each) do
    sign_in_and_play
  end

  scenario 'default load' do
    expect(page).to have_content 'Bob vs Alice'
    expect(page).to have_selector(:button, "Bob's pick")
    expect(page).to have_selector(:button, "Alice's pick")
  end

  scenario 'load after player 1 pick' do
    click_button "Bob's pick"
    choose('pick', option: 'rock')
    click_button 'Submit'

    expect(page).to have_current_path('/play')
    expect(page).to have_content 'Bob vs Alice'
    expect(page).to have_selector(:button, "Alice's pick")
    expect(page).to_not have_selector(:button, "Bob's pick")
  end

  scenario 'load after player 2 pick' do
    click_button "Alice's pick"
    choose('pick', option: 'paper')
    click_button 'Submit'

    expect(page).to have_current_path('/play')
    expect(page).to have_content 'Bob vs Alice'
    expect(page).to have_selector(:button, "Bob's pick")
    expect(page).to_not have_selector(:button, "Alice's pick")
  end

  scenario 'load after both players pick' do
    click_button "Bob's pick"
    choose('pick', option: 'rock')
    click_button 'Submit'
    click_button "Alice's pick"
    choose('pick', option: 'paper')
    click_button 'Submit'

    expect(page).to have_content 'Alice Win'
    expect(page).to_not have_selector(:button, "Bob's pick")
    expect(page).to_not have_selector(:button, "Alice's pick")
  end
end
