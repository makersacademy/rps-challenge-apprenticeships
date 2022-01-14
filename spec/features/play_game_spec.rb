feature 'Play game:' do
  before(:each) do
    @player_name = "Radagast"
    visit('/')
    fill_in :name, with: @player_name
    click_button 'Start'
  end
  scenario '(1) Player chooses Rock, Computer chooses Paper, Computer wins' do
    srand(1)  
    choose('Rock')
    click_button 'Go!'
    expect(page).to have_content "#{@player_name} attacks with Rock"
    expect(page).to have_content "Computer attacks with Paper"
    expect(page).to have_content "The winner is: Computer"
  end
  scenario '(2) Player chooses Scissors, Computer chooses Scissors, Draw' do
    srand(3)  
    choose('Scissors')
    click_button 'Go!'
    expect(page).to have_content "#{@player_name} attacks with Scissors"
    expect(page).to have_content "Computer attacks with Scissors"
    expect(page).to have_content "Its a draw!"
  end
  scenario '(3) Player chooses Paper, Computer chooses Rock, Player wins' do
    srand(2)  
    choose('Paper')
    click_button 'Go!'
    expect(page).to have_content "#{@player_name} attacks with Paper"
    expect(page).to have_content "Computer attacks with Rock"
    expect(page).to have_content "The winner is: #{@player_name}"
  end
end
