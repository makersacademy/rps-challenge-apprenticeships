def sign_in_and_play
    visit('/')
    fill_in('player1', with: 'Anita')
    fill_in('player2', with: 'Bob')
    click_button('submit')
end

def choose_rock
    choose(option: 'rock')
    click_button('submit')
end

def choose_paper
    choose(option: 'paper')
    click_button('submit')
end

def choose_scissors
    choose(option: 'scissors')
    click_button('submit')
end