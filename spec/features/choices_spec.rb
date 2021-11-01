# the marketeer will be presented the choices (rock, paper and scissors)

feature 'Present the choices' do
  scenario 'it presents the choices (rock, paper and scissors)' do
    visit '/'
    fill_in 'name', with:'John Wick'
    click_button 'Submit'
    expect(page).to have_button 'Rock'
    expect(page).to have_button 'Paper'
    expect(page).to have_button 'Scissors'
  end

  scenario 'player chooses on option' do
    visit '/'
    fill_in 'name', with:'John Wick'
    click_button 'Submit'
    click_button 'Rock'
    expect(page).to have_content "Your choice is: Rock"
  end
end