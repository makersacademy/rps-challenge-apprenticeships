feature 'Start game:' do
  scenario '(1) Can run app and check page content' do
    visit('/')
    expect(page).to have_content 'Rock, Paper, Scissors!'
    expect(page).to have_content 'Start new game'
    expect(page).to have_field('name')
    expect(page).to have_button('Start')
  end
  scenario '(2) Allows a player to enter their name' do
    @player_name = "Radagast"
    visit('/')
    fill_in :name, with: @player_name
    click_button 'Start'
    expect(page).to have_content "#{@player_name}, choose your attack:"
    expect(page).to have_button('Rock')
    expect(page).to have_button('Paper')
    expect(page).to have_button('Scissors')
  end
end
