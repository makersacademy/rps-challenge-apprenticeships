# adjust this number to speed up/slow down test execution in the browser
sleep_time_for_capybara = 1

feature 'Homepage' do
  scenario 'visit Homepage and display correct content' do
    visit_homepage
    expect(page).to have_content('Game on!')
    expect(page).to have_content('Rock | Paper | Scissors')
    expect(page).to have_content('Enter your name:')
    expect(page).to have_field('name')
    expect(page).to have_content('Click Rock, Paper, or Scissors:')
    expect(page).to have_button('Rock')
    expect(page).to have_button('Paper')
    expect(page).to have_button('Scissors')
  end

  scenario 'should enter name and make choice' do
    sign_in_and_play(sleep_time_for_capybara)
  end
end


