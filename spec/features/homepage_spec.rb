feature 'Homepage' do
  scenario 'visit Homepage and correct content is displayed' do
    visit_homepage
    expect(page).to have_content('Game on!')
    expect(page).to have_content('Rock, Paper, Scissors')
    expect(page).to have_content('Enter your name:')
    expect(page).to have_field('name')
    expect(page).to have_content('Click one:')
    expect(page).to have_button('Rock')
    expect(page).to have_button('Paper')
    expect(page).to have_button('Scissors')
  end

  scenario 'should enter name and make choice' do
    sign_in_and_play
  end
end


