
def enter_name
  visit('/')
  fill_in :player_name, with: 'Brad'
  click_button 'Submit'
end