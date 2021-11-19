
feature 'game_page checks' do 

  scenario 'checks we get player names for 1 player to game_page' do 

    fill_in_register_1player
    expect(page).to have_content "1player"

  end 

  scenario 'checks we get player names for 2 players to game_page' do 
    
    fill_in_register_2player
    expect(page).to have_content "MyBrain vs Code"

  end

  scenario 'checks if we have no names input we get error message' do 

    register_page
    click_on "add player"
    expect(page).to have_content "Error: Not enough players for multiplayer"

  end 

  scenario 'checks we can select rock paper or scissors' do 

    fill_in_register_1player
    click_on 'Rock'
    expect(page).to have_content "your choice: Rock"
    click_on 'Paper'
    expect(page).to have_content "your choice: Paper"
    click_on 'Scissors'
    expect(page).to have_content "your choice: Scissors"
    
  end 

end 
