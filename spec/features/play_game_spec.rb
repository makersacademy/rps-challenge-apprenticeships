feature 'Play game:' do
  scenario '(1) Choose an attack and see who wins' do
    @player_name = "Radagast"
    visit('/')
    fill_in :name, with: @player_name
    click_button 'Start'
    click_button 'Rock'
    save_and_open_page
    expect(page).to have_title 'Rock, Paper, Scissors - Result'
    expect(page).to have_content "#{@player_name} attacks with Rock"
    expect(page).to have_content "Computer attacks with #{@computer.attack}"
    expect(page).to have_content "The winner is: #{@game.winner}"
  end
end