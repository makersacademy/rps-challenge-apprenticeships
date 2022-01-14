feature 'Start game:' do
  scenario '(1) Can run app and check page content' do
    visit('/')
    expect(page).to have_content 'Rock, Paper, Scissors!'
    expect(page).to have_content 'Start new game'
    expect(page).to have_field 'name'
    expect(page).to have_button 'Start'
    expect(page).to have_title 'Rock, Paper, Scissors'
  end
  scenario '(2) Allows a player to enter their name' do
    @player_name = "Radagast"
    visit('/')
    fill_in :name, with: @player_name
    click_button 'Start'
    expect(page).to have_content "#{@player_name}, choose your attack:"
    expect(page).to have_field 'Rock'
    expect(page).to have_field 'Paper'
    expect(page).to have_field 'Scissors'
    expect(page).to have_button 'Go'
    expect(page).to have_title 'Rock, Paper, Scissors - Choose your attack'
  end
end
