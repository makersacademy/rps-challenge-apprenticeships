def sign_in_and_play
    visit('/')
    @player_1_name = 'Amin'
    fill_in :player_1_name, with: @player_1_name
    click_button 'Submit'
end