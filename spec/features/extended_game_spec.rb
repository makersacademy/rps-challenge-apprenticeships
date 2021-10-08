feature 'Extended game' do
  scenario 'Has extended game buttons' do
    visit '/'
    click_button 'Rock, Paper, Scissor, Lizard, Spock'
    fill_in "name", with: "Foo"
    click_button "Submit"

    expect(page).to have_button('Lizard')
    expect(page).to have_button('Spock')
  end
end