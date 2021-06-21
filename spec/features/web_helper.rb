def sign_in
  visit('/')
  fill_in :name, with: 'Hannah'
  click_button('Submit')
end
