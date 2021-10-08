def visit_homepage
  visit '/'
end

def sign_in_and_play(sleep_time_for_capybara)
  visit '/'
  sleep(sleep_time_for_capybara)
  page.fill_in('name', with: 'Foo')
  sleep(sleep_time_for_capybara)
  page.click_button('Rock')
  sleep(sleep_time_for_capybara)
  expect(page).to have_current_path('/result')
end