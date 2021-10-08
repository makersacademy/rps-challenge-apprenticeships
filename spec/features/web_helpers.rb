def visit_homepage
  visit '/'
end

def sign_in_and_play
  visit '/'
  page.fill_in('name', with: 'Foo')
  page.click_button('Rock')
  expect(page).to have_current_path('/result')
end