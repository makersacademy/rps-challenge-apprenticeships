def sign_in_and_play
    visit('/')
    fill_in :player_1_name, with: 'Hannah'
    fill_in :player_2_name, with: 'Dede'
    click_button 'Submit'
end