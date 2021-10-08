def sign_in_and_play
    visit('/')
    within("#name_form") do
      fill_in 'player_name', with: 'stella'
    end
    click_button 'submit'
end

def play_move(move)
  visit('/')
  sign_in_and_play
  click_button move
end