feature 'Play game:' do
  scenario '(1) Choose an attack and see who wins' do
    srand(1)
    @player_name = "Radagast"
    visit('/')
    fill_in :name, with: @player_name
    click_button 'Start'
    choose('Rock')
    click_button 'Go!'

    expect(page).to have_content "#{@player_name} attacks with Rock"
    expect(page).to have_content("Computer attacks with Paper")
    expect(page).to have_content("The winner is: Computer")
  end
end
