def sign_in_and_play
  visit('/')
  fill_in :player_one_name, with: 'Sam'
  click_button('Submit')
end

def h(text)
  Rack::utils.escape_html(text)
end 
