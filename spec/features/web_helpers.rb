def enter_details_and_play
  visit '/'
  page.fill_in('name', with: 'Tom')
  page.click_button('Paper')
  expect(page).to have_current_path('/result')
end
