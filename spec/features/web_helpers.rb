def enter_user
  visit('/')
  fill_in :username, with: 'Wigglesworth'
  click_button 'Submit'
end

def choose_rps(choice)
  choose(choice)
  click_button 'Submit'
end
