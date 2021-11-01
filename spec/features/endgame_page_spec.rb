
feature 'endgame page correct result' do 

  scenario "MyBrain chooses rock and Code chooses scissors" do
    fill_in_register_2player
    click_on "Rock"
    click_on "Scissors"
    expect(page).to have_content "MyBrain Wins"
  end 

  scenario "Code chooses paper and MyBrain chooses Rock" do
    fill_in_register_2player
    click_on "Rock"
    click_on "Paper"
    expect(page).to have_content "Code Wins"
  end 

  scenario "Checks we can replay on multiplayer" do
    fill_in_register_2player
    click_on "Rock"
    click_on "Paper"
    expect(page).to have_content "Code Wins"
    click_on "Play Again"
    expect(page).to have_content "MyBrain vs Code"
  end 

  scenario "Checks we can exit to the main menu" do
    fill_in_register_2player
    click_on "Rock"
    click_on "Paper"
    expect(page).to have_content "Code Wins"
    click_on "Exit"
    expect(page).to have_content "Welcome"
  end 

end 
