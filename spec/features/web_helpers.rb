def sign_in_and_play
    visit('/')
    fill_in :player_1_name, with: 'Dave'
    fill_in :player_2_name, with: 'Mittens'
    click_button 'Submit'
end

def play_draw
    select('Rock', :from => 'option1')
    select('Rock', :from => 'option2')
    click_button 'Submit'
end

def play_1wins
    select('Rock', :from => 'option1')
    select('Scissors', :from => 'option2')
    click_button 'Submit'
end

def play_2wins
    select('Paper', :from => 'option1')
    select('Scissors', :from => 'option2')
    click_button 'Submit'
end
