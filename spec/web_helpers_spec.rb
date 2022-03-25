def sign_in_and_join_playroom
    visit('/')
    fill_in 'player_name', with: 'Laura'
    click_button('Enter the Playroom')
end

def play_rps
    click_button('Rock Paper Scissors')
    choose 'rps', option: 'Rock'
    click_button('OK')
end