# adjust this number to speed up/slow down test execution in the browser
sleep_time_for_capybara = 1

feature 'Results page' do
  scenario 'should display results page with details' do
    allow_any_instance_of(Array).to receive(:sample).and_return('Rock')
    sign_in_and_play(sleep_time_for_capybara)
    expect(page).to have_content('Foo vs. Computer')
    sleep(sleep_time_for_capybara)
    expect(page).to have_content('Foo chose Rock')
    sleep(sleep_time_for_capybara)
    expect(page).to have_content('Computer chose Rock')
    sleep(sleep_time_for_capybara)
    expect(page).to have_content('It\'s a draw!')
    sleep(sleep_time_for_capybara)
    expect(page).to have_button('Play Again')
  end

  scenario 'should show player name as "You" if no name is entered' do
    allow_any_instance_of(Array).to receive(:sample).and_return('Paper')
    visit '/'
    sleep(sleep_time_for_capybara)
    page.click_button('Rock')
    sleep(sleep_time_for_capybara)
    expect(page).to have_content('You vs. Computer')
    sleep(sleep_time_for_capybara)
    expect(page).to have_content('You chose Rock')
    sleep(sleep_time_for_capybara)
    expect(page).to have_content('Computer chose Paper')
    sleep(sleep_time_for_capybara)
    expect(page).to have_content('Computer Wins!')
    sleep(sleep_time_for_capybara)
    expect(page).to have_button('Play Again')
  end
end