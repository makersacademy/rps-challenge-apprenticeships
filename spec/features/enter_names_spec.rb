feature 'can enter name' do
  scenario 'Page welcomes player' do
    visit('/')
    expect(page).to have_content 'Welcome to Rock, Paper, Scissors!'
  end

  scenario 'user can input their name' do
    visit('/')
    fill_in :player_1_name, with: 'Ronald'
    page.choose 'paper'
    click_button 'Submit'
    expect(page).to have_content 'Ronald'
  end
end
