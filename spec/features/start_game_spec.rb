feature 'Start game page' do
  scenario 'player signs in and goes to start game page' do
    sign_in
    expect(page).to have_content('Hello Hannah. Let the game begin.')
  end
end

feature 'Select choice' do
  scenario 'player chooses rock, paper or scissors' do
    sign_in
    click_button('Rock')
    expect(page).to have_content('You chose Rock')
  end
end
