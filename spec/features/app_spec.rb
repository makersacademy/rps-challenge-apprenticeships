# potential for a before statement

feature 'home page' do
  scenario 'marketeer invited to enter their name' do
    visit '/'
    fill_in('user_name', with: 'test')
    expect(page).to have_content('Please enter your name')
  end
end

feature 'home page data submit' do
  scenario 'marketeer fills in name and presses Start Game and is taken to the Game page' do
    visit '/'
    fill_in('user_name', with: 'test')
    click_button("Start")
    # save_and_open_page
    expect(page).to have_content('Please choose your move')
  end
end

feature 'play game submit turn' do
  scenario 'marketeer chooses option presses Send Message and is taken to the results page' do
    visit '/'
    fill_in('user_name', with: 'test')
    click_button("Start")
    select('Rock')
    click_button("Send Message")
    # save_and_open_page
    expect(page).to have_content('Play again? Click here!')
  end
end
