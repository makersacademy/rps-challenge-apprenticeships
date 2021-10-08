feature 'Homepage' do
  scenario 'have correct content' do
    visit('/')
    expect(page).to have_content('Rock, Paper, Scissors')
    expect(page).to have_content('Your name:')
    expect(page).to have_field('name')
    
    expect(page).to have_content('Choose your move:')
    expect(page).to have_button('Rock')
    expect(page).to have_button('Paper')
    expect(page).to have_button('Scissors')
  end

  scenario 'should enter name and make choice' do
    enter_details_and_play
  end
end
