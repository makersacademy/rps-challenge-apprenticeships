feature 'Game' do

    scenario 'Player can select a move' do
        sign_in_and_play
        select('Paper', from: 'move')
        click_button "OK"
        expect(page).to have_content "You chose paper"
    end

    scenario 'Player can select a move' do
        sign_in_and_play
        select('Rock', from: 'move')
        click_button "OK"
        expect(page).to have_content "You chose rock"
    end

    scenario 'Player can select a move' do
        sign_in_and_play
        select('Scissors', from: 'move')
        click_button "OK"
        expect(page).to have_content "You chose scissors"
    end
end