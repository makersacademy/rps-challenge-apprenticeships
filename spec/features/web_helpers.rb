def sign_in_and_play
    visit('/')
    fill_in('player', with: 'Anita')
    click_button('submit')
end