feature 'Extended game' do
  scenario 'Has extended game buttons' do
    visit '/'
    click_button 'Rock, Paper, Scissor, Lizard, Spock'
    fill_in "name", with: "Foo"
    click_button "Submit"

    expect(page).to have_button('Lizard')
    expect(page).to have_button('Spock')
  end

  scenario 'user wins' do  
    allow_any_instance_of(Game).to receive(:extended_computer_choice).and_return("Lizard")
    visit '/'
    click_button 'Rock, Paper, Scissor, Lizard, Spock'
    fill_in "name", with: "Foo"
    click_button "Submit"
    click_button 'Spock'
    expect(page).to have_content 'Computer wins'
  end
end